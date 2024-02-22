import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/backend/models/payment_package.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/widgets/service_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PromotionScreen extends StatelessWidget {
  const PromotionScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(l(context).promotions),
      ),
      body: BlocBuilder<ServiceCubit, ServiceState>(builder: (context, state) {
        List<PaymentPackage> promotions =
            context.read<ServiceCubit>().getPromotions();
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.separated(
              separatorBuilder: (_, __) => const SizedBox(
                    height: 4,
                  ),
              itemCount: promotions.length,
              itemBuilder: (context, i) {
                PaymentPackage promotion = promotions[i];
                return ServiceListTile(
                  subtitle: promotion.product.description,
                  title: promotion.product.name,
                  onTap: () {
                    context.pushRoute(PaymentRoute(
                        service: promotion.service,
                        product: promotion.product));
                  },
                  imageUrl: promotion.service.image,
                );
              }),
        );
      }),
    );
  }
}
