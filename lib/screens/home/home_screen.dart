import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/backend/models/client.dart';
import 'package:fleet_consumer/backend/models/payment_log.dart';
import 'package:fleet_consumer/backend/models/payment_package.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/models/service_kind.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/backend/services/client_service.dart';
import 'package:fleet_consumer/config.dart';
import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/logger.dart';
import 'package:fleet_consumer/objectbox.g.dart';
import 'package:fleet_consumer/widgets/card.dart';
import 'package:fleet_consumer/widgets/expandable_fab.dart';
import 'package:fleet_consumer/widgets/service_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _loadServices();
    WidgetsBinding.instance.addPostFrameCallback((_) => _initSession(context));
  }

  /// Collect Device information in background and send it to the API or create a new session
  Future<void> _initSession(BuildContext context) async {
    try {
      ApiService apiService = context.read<ApiService>();
      final clientService = context.read<ClientService>();

      final results = await Future.wait([
        clientService.getSavedSessionToken(),
        clientService.collectClientData(),
      ]);

      logger.info("initializing the session");

      String? sessionToken = results[0] as String?;
      Client clientData = results[1] as Client;

      sessionToken == null
          ? await apiService.createSession(clientData)
          : await apiService.updateSession(clientData);
    } catch (err, trace) {
      logger.warning("failed to initialize the session", err, trace);
    }
  }

  _loadServices() {
    logger.info("loading service");
    context.read<ServiceCubit>().refresh().then((value) {
      logger.info("services loaded", value);
      FlutterNativeSplash.remove();
    }).catchError((err, trace) {
      logger.warning("failed to load service", err, trace);
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          l(context).home,
          style: const TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              decoration:
                  const BoxDecoration(color: FleetConsumerApp.primaryColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Image.asset(
                  "assets/icon/logo-white.png",
                  width: 100,
                ),
              ),
            )),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112,
        children: [
          ActionButton(
            onPressed: () {
              context.pushRoute(ServicesRoute(kind: ServiceKind.bundle));
            },
            label: Text(l(context).buyInternetBundle),
          ),
          ActionButton(
            onPressed: () {
              context.pushRoute(ServicesRoute(kind: ServiceKind.airtime));
            },
            label: Text(l(context).buyAirtime),
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              color: FleetConsumerApp.primaryColor,
              height: 100,
            ),
          ),
          ListView(
            children: const [
              RecentTransactionCard(),
              PromotionCard(),
            ],
          ),
        ],
      ),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 120,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: FleetConsumerApp.primaryColor,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: FittedBox(
                  child: SizedBox(
                    width: 100,
                    child: Image.asset(
                      'assets/icon/logo-white.png',
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text(l(context).home),
            onTap: () {
              Scaffold.of(context).closeDrawer();
            },
          ),
          ListTile(
            leading: const Icon(Icons.record_voice_over_sharp),
            title: Text(l(context).airtime),
            onTap: () {
              context.pushRoute(ServicesRoute(kind: ServiceKind.airtime));
            },
          ),
          ListTile(
            leading: const Icon(Icons.send_to_mobile_sharp),
            title: Text(l(context).dataBundle),
            onTap: () {
              context.pushRoute(ServicesRoute(kind: ServiceKind.bundle));
            },
          ),
          ListTile(
            leading: const Icon(Icons.campaign_sharp),
            title: Text(l(context).promotions),
            onTap: () {
              context.pushRoute(const PromotionRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.list_alt_sharp),
            title: Text(l(context).history),
            onTap: () {
              context.pushRoute(const HistoryRoute());
            },
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: Text(l(context).helpCenter),
            onTap: () {
              Uri uri = Uri(
                scheme: "https",
                host: "wa.me",
                path: Config.supportNumber(),
              );
              launchUrl(uri);
            },
          ),
        ],
      ),
    );
  }
}

class RecentTransactionDataCardContent extends StatelessWidget {
  final PaymentLog log;
  const RecentTransactionDataCardContent({
    required this.log,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: ServiceImage(
        imageUrl: log.serviceImage,
      ),
      title: Text(log.serviceName),
      subtitle: Text(log.productName),
      trailing: Text(
        formatAmount(log.amount),
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class PromotionDataCardContent extends StatelessWidget {
  final PaymentPackage promotion;
  const PromotionDataCardContent({super.key, required this.promotion});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 8),
      leading: ServiceImage(
        imageUrl: promotion.service.image,
      ),
      title: Text(promotion.service.name),
      subtitle: Text(promotion.product.name),
      trailing: Text(
        promotion.product.fixedPrice
            ? formatAmount(promotion.product.price ?? 0)
            : "-",
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class RecentTransactionCard extends StatelessWidget {
  const RecentTransactionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Stream<Query<PaymentLog>> queryStream = context
        .read<Store>()
        .box<PaymentLog>()
        .query()
        .order(PaymentLog_.id, flags: Order.descending)
        .watch(triggerImmediately: true);
    return StreamBuilder(
        stream: queryStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const SizedBox.shrink();
          }
          PaymentLog? log = snapshot.data?.findFirst();
          if (log == null) {
            return const SizedBox.shrink();
          }
          Service? service = context
              .read<ServiceCubit>()
              .state
              .services
              .where((element) => element.uuid == log.serviceUuid)
              .firstOrNull;
          Product? product = service?.products
              .where((element) => element.uuid == log.productUuid)
              .firstOrNull;
          bool enabled = product != null && service != null;
          return Padding(
            padding: const EdgeInsets.all(24.0).copyWith(top: 0),
            child: DataCard(
              enabled: enabled,
              onPrimaryOptionPressed: () {
                context.pushRoute(PaymentRoute(
                    product: product!,
                    service: service!,
                    momoPhoneNumber: log.debitDestination,
                    destination: log.creditDestination,
                    amount: log.amount));
              },
              primaryOptionTitle: l(context).repeat,
              secondaryOptionTitle: l(context).seeAll,
              onSecondaryOptionPressed: () {
                context.pushRoute(const HistoryRoute());
              },
              title: l(context).mostRecentTransactions,
              child: RecentTransactionDataCardContent(
                log: log,
              ),
            ),
          );
        });
  }
}

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServiceCubit, ServiceState>(
      builder: (context, state) {
        PaymentPackage? promotion =
            context.read<ServiceCubit>().getFeaturedPromotion();
        if (promotion == null) {
          return const SizedBox.shrink();
        }
        return Padding(
          padding: const EdgeInsets.all(24.0).copyWith(bottom: 16, top: 8),
          child: DataCard(
            onPrimaryOptionPressed: () {
              context.pushRoute(PaymentRoute(
                  product: promotion.product, service: promotion.service));
            },
            primaryOptionTitle: l(context).buyNow,
            secondaryOptionTitle: l(context).seeAll,
            onSecondaryOptionPressed: () {
              context.pushRoute(const PromotionRoute());
            },
            title: l(context).promotionOfTheDay,
            child: PromotionDataCardContent(
              promotion: promotion,
            ),
          ),
        );
      },
    );
  }
}
