import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsScreen extends StatelessWidget implements AutoRouteWrapper {
  final Service service;
  const ProductsScreen(this.service, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(service.name),
      ),
      body: ListView.separated(
          itemCount: service.products.length,
          separatorBuilder: (context, i) {
            return const Divider();
          },
          itemBuilder: (context, i) {
            var product = service.products[i];
            return ListTile(
              onTap: () {
                context.pushRoute(
                    PaymentRoute(product: product, service: service));
              },
              leading: Image.network(
                service.image,
                width: 100,
                height: 100,
              ),
              title: Text(product.name),
              trailing: const Icon(Icons.chevron_right),
              subtitle: Text(product.description),
            );
          }),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}
