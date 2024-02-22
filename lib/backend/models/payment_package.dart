import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';

class PaymentPackage {
  final Product product;
  final bool featured;
  final Service service;

  const PaymentPackage(
      {required this.product, required this.service, this.featured = false});
}
