// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ProductsRoute.name: (routeData) {
      final args = routeData.argsAs<ProductsRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ProductsScreen(
          args.service,
          key: args.key,
        )),
      );
    },
    StatusRoute.name: (routeData) {
      final args = routeData.argsAs<StatusRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: StatusScreen(
          args.payment,
          key: args.key,
        )),
      );
    },
    PaymentRoute.name: (routeData) {
      final args = routeData.argsAs<PaymentRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: PaymentScreen(
          args.product,
          args.service,
          key: args.key,
        )),
      );
    },
    MyPaymentRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const MyPaymentScreen()),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductsScreen]
class ProductsRoute extends PageRouteInfo<ProductsRouteArgs> {
  ProductsRoute({
    required Service service,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProductsRoute.name,
          args: ProductsRouteArgs(
            service: service,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductsRoute';

  static const PageInfo<ProductsRouteArgs> page =
      PageInfo<ProductsRouteArgs>(name);
}

class ProductsRouteArgs {
  const ProductsRouteArgs({
    required this.service,
    this.key,
  });

  final Service service;

  final Key? key;

  @override
  String toString() {
    return 'ProductsRouteArgs{service: $service, key: $key}';
  }
}

/// generated route for
/// [StatusScreen]
class StatusRoute extends PageRouteInfo<StatusRouteArgs> {
  StatusRoute({
    required Payment payment,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          StatusRoute.name,
          args: StatusRouteArgs(
            payment: payment,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'StatusRoute';

  static const PageInfo<StatusRouteArgs> page = PageInfo<StatusRouteArgs>(name);
}

class StatusRouteArgs {
  const StatusRouteArgs({
    required this.payment,
    this.key,
  });

  final Payment payment;

  final Key? key;

  @override
  String toString() {
    return 'StatusRouteArgs{payment: $payment, key: $key}';
  }
}

/// generated route for
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    required Product product,
    required Service service,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            product: product,
            service: service,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PaymentRoute';

  static const PageInfo<PaymentRouteArgs> page =
      PageInfo<PaymentRouteArgs>(name);
}

class PaymentRouteArgs {
  const PaymentRouteArgs({
    required this.product,
    required this.service,
    this.key,
  });

  final Product product;

  final Service service;

  final Key? key;

  @override
  String toString() {
    return 'PaymentRouteArgs{product: $product, service: $service, key: $key}';
  }
}

/// generated route for
/// [MyPaymentScreen]
class MyPaymentRoute extends PageRouteInfo<void> {
  const MyPaymentRoute({List<PageRouteInfo>? children})
      : super(
          MyPaymentRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyPaymentRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
