import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/models/payment_log.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/logger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:objectbox/objectbox.dart';

@RoutePage()
class MyPaymentScreen extends StatefulWidget implements AutoRouteWrapper {
  const MyPaymentScreen({super.key});

  @override
  State<MyPaymentScreen> createState() => _MyPaymentScreenState();
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _MyPaymentScreenState extends State<MyPaymentScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Box<PaymentLog> box = context.read<Store>().box<PaymentLog>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mes paiements"),
      ),
      body: Column(
        children: [
          if (isLoading) const LinearProgressIndicator(),
          Expanded(
            child: FutureBuilder<List<PaymentLog>>(
                future: box.getAllAsync(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  var data = snapshot.data!.reversed.toList();
                  if (data.isEmpty) {
                    return const SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: 16.0,
                            ),
                            child: Icon(
                              Icons.hourglass_empty,
                              color: Colors.grey,
                              size: 32,
                            ),
                          ),
                          Text("Vous n'avez aucun paiements!")
                        ],
                      ),
                    );
                  }
                  return ListView.separated(
                    separatorBuilder: (context, i) => const Divider(),
                    itemCount: data.length,
                    itemBuilder: (context, i) {
                      PaymentLog log = data[i];
                      return ListTile(
                        enabled: !isLoading,
                        onTap: () {
                          if (isLoading) return;
                          setState(() {
                            isLoading = true;
                          });
                          context
                              .read<ApiService>()
                              .getPayment(log.code)
                              .then((value) {
                            context.pushRoute(StatusRoute(payment: value));
                            setState(() {
                              isLoading = false;
                            });
                          }).catchError((err, t) {
                            logger.warning("failed to get transaction", err, t);
                            setState(() {
                              isLoading = false;
                            });
                          });
                        },
                        title: Text(
                            "${log.productName} vers ${log.creditDestination}"),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Montant: ${formatAmount(log.amount)}",
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.zero,
                              child: Text(
                                  "Effectué le: ${DateFormat.yMMMd().format(log.createdAt!)} à ${DateFormat.Hm().format(log.createdAt!)}"),
                            ),
                          ],
                        ),
                        trailing: const Icon(Icons.chevron_right),
                      );
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
