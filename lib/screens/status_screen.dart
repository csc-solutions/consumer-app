import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/backend/blocs/status/status_bloc.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/payment_status_enum.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/config.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:objectbox/objectbox.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class StatusScreen extends StatelessWidget implements AutoRouteWrapper {
  final Payment payment;
  const StatusScreen(this.payment, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StatusBloc, StatusState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Uri uri = Uri(
                  scheme: "https",
                  host: "wa.me",
                  path: Config.supportNumber(),
                  queryParameters: {
                    "text":
                        "Je vous contacte par rapport au paiement #${state.payment.code}"
                  });
              launchUrl(uri);
            },
            child: const Icon(Icons.support_agent),
          ),
          appBar: AppBar(
            title: const Text("Paiement"),
          ),
          body: ListView(
            children: [
              if (state.payment.status.isPending)
                const LinearProgressIndicator(),
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: ListTile(
                  title: const Text("Status du paiement"),
                  subtitle: Text(
                    state.payment.status.detail.title,
                    style: TextStyle(
                        color: state.payment.status.color,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(bottom: 16),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                      const TextSpan(
                          text: "Achat de: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: state.payment.product.name),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(bottom: 16),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                      const TextSpan(
                          text: "Vers: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: state.payment.creditDestination),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0)
                    .copyWith(bottom: 16),
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium,
                        children: [
                      const TextSpan(
                          text: "Montant: ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: formatAmount(state.payment.amount)),
                    ])),
              ),
              const Divider(),
              ListTile(
                title: const Text("Code du paiement"),
                subtitle: Text(state.payment.code),
                trailing: IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: payment.code));
                  },
                ),
              ),
              const Divider(),
              ...(state.payment.status.detail.steps.map(
                (e) => ListTile(
                  leading: const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                  ),
                  title: Text(
                    e.description,
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
              )),
              ListTile(
                leading: state.payment.status.icon,
                title: Text(
                  state.payment.status.detail.title,
                  style: TextStyle(color: state.payment.status.color),
                ),
                subtitle: Text(state.payment.status.detail.description),
              ),
              if (!state.payment.status.isPending)
                Padding(
                  padding: const EdgeInsets.all(16.0).copyWith(top: 32),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        context.router.popUntilRoot();
                      },
                      icon: const Icon(Icons.send),
                      label: const Text("Retour à l'acceuil")),
                )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => StatusBloc(
          payment, context.read<ApiService>(), context.read<Store>()),
      child: this,
    );
  }
}
