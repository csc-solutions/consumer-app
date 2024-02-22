import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/models/payment_log.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/logger.dart';
import 'package:fleet_consumer/objectbox.g.dart';
import 'package:fleet_consumer/widgets/service_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

@RoutePage()
class HistoryScreen extends StatefulWidget implements AutoRouteWrapper {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _HistoryScreenState extends State<HistoryScreen> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    Box<PaymentLog> box = context.read<Store>().box<PaymentLog>();
    return Scaffold(
      appBar: AppBar(
        title: Text(l(context).history),
      ),
      body: Column(
        children: [
          if (isLoading) const LinearProgressIndicator(),
          Expanded(
            child: FutureBuilder<List<PaymentLog>>(
                future: box
                    .query()
                    .order(PaymentLog_.id, flags: Order.descending)
                    .build()
                    .findAsync(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: Align(
                          alignment: Alignment.topCenter,
                          child: LinearProgressIndicator()),
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
                          Text("La liste est vide!")
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
                              logger.warning(
                                  "failed to get transaction", err, t);
                              setState(() {
                                isLoading = false;
                              });
                            });
                          },
                          leading: ServiceImage(
                            imageUrl: log.serviceImage,
                          ),
                          title: Text(log.productName),
                          trailing: Text(
                            formatAmount(log.amount),
                          ),
                          subtitle: Text(
                              "${DateFormat.yMMMd().format(log.createdAt!)} ${l(context).at} ${DateFormat.Hm().format(log.createdAt!)}"));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
