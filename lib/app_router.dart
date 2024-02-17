import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/screens/home/home_screen.dart';
import 'package:fleet_consumer/screens/payment_screen.dart';
import 'package:fleet_consumer/screens/status_screen.dart';
import 'package:fleet_consumer/screens/products_screen.dart';
import 'package:fleet_consumer/screens/my_payments_screen.dart';
import 'package:flutter/widgets.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(page: PaymentRoute.page),
        AutoRoute(page: StatusRoute.page),
        AutoRoute(page: ProductsRoute.page),
        AutoRoute(page: MyPaymentRoute.page),
      ];
}
