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
    HistoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const HistoryScreen()),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
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
          destination: args.destination,
          momoPhoneNumber: args.momoPhoneNumber,
          amount: args.amount,
        )),
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
    PromotionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PromotionScreen(),
      );
    },
    ServicesRoute.name: (routeData) {
      final args = routeData.argsAs<ServicesRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ServicesScreen(
          key: args.key,
          kind: args.kind,
        ),
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
  };
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
      : super(
          HistoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'HistoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
/// [PaymentScreen]
class PaymentRoute extends PageRouteInfo<PaymentRouteArgs> {
  PaymentRoute({
    required Product product,
    required Service service,
    Key? key,
    String? destination,
    String? momoPhoneNumber,
    int? amount,
    List<PageRouteInfo>? children,
  }) : super(
          PaymentRoute.name,
          args: PaymentRouteArgs(
            product: product,
            service: service,
            key: key,
            destination: destination,
            momoPhoneNumber: momoPhoneNumber,
            amount: amount,
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
    this.destination,
    this.momoPhoneNumber,
    this.amount,
  });

  final Product product;

  final Service service;

  final Key? key;

  final String? destination;

  final String? momoPhoneNumber;

  final int? amount;

  @override
  String toString() {
    return 'PaymentRouteArgs{product: $product, service: $service, key: $key, destination: $destination, momoPhoneNumber: $momoPhoneNumber, amount: $amount}';
  }
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
/// [PromotionScreen]
class PromotionRoute extends PageRouteInfo<void> {
  const PromotionRoute({List<PageRouteInfo>? children})
      : super(
          PromotionRoute.name,
          initialChildren: children,
        );

  static const String name = 'PromotionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ServicesScreen]
class ServicesRoute extends PageRouteInfo<ServicesRouteArgs> {
  ServicesRoute({
    Key? key,
    required ServiceKind kind,
    List<PageRouteInfo>? children,
  }) : super(
          ServicesRoute.name,
          args: ServicesRouteArgs(
            key: key,
            kind: kind,
          ),
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const PageInfo<ServicesRouteArgs> page =
      PageInfo<ServicesRouteArgs>(name);
}

class ServicesRouteArgs {
  const ServicesRouteArgs({
    this.key,
    required this.kind,
  });

  final Key? key;

  final ServiceKind kind;

  @override
  String toString() {
    return 'ServicesRouteArgs{key: $key, kind: $kind}';
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
