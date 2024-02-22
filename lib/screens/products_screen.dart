import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/product_tag.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/helpers.dart';
import 'package:fleet_consumer/widgets/service_list_tile.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProductsScreen extends StatefulWidget implements AutoRouteWrapper {
  final Service service;
  const ProductsScreen(this.service, {Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _ProductsScreenState extends State<ProductsScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: ProductTag.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.service.name),
          bottom: TabBar(
              indicator: const UnderlineTabIndicator(
                borderSide: BorderSide(width: 4.0, color: Colors.white),
              ),
              tabs: List<Widget>.from(ProductTag.values.map((tag) {
                return Tab(
                  text: tag.name(context),
                );
              }))),
        ),
        body: TabBarView(
          children: ProductTag.values
              .map((tag) => ProductList(tag: tag, service: widget.service))
              .toList(),
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    super.key,
    required this.service,
    required this.tag,
  });

  final Service service;
  final ProductTag tag;

  @override
  Widget build(BuildContext context) {
    List<Product> products = service.productTagged(tag);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.separated(
          separatorBuilder: (_, __) => const SizedBox(
                height: 4,
              ),
          itemCount: products.length,
          itemBuilder: (context, i) {
            var product = products[i];
            return ServiceListTile(
              onTap: () {
                context.pushRoute(
                    PaymentRoute(product: product, service: service));
              },
              imageUrl: service.image,
              title: product.name,
              subtitle: product.description,
              trailing:
                  product.price != null ? formatAmount(product.price!) : null,
            );
          }),
    );
  }
}
