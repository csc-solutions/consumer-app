import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/models/service_kind.dart';
import 'package:fleet_consumer/widgets/service_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class ServicesScreen extends StatelessWidget {
  final ServiceKind kind;
  const ServicesScreen({Key? key, required this.kind}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kind.name(context)),
      ),
      body: BlocBuilder<ServiceCubit, ServiceState>(builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(
                    height: 4,
                  ),
              itemCount: state.services.length,
              itemBuilder: (context, i) {
                Service service = state.services[i];
                return ServiceListTile(
                  subtitle: service.description,
                  title: service.name,
                  onTap: () {
                    if (kind == ServiceKind.airtime) {
                      Product? product = service.products
                          .where((element) => !element.fixedPrice)
                          .firstOrNull;
                      if (product != null) {
                        context.pushRoute(
                            PaymentRoute(service: service, product: product));
                        return;
                      }
                    }
                    context.pushRoute(ProductsRoute(service: service));
                  },
                  imageUrl: service.image,
                );
              }),
        );
      }),
    );
  }
}
