import 'package:dio/dio.dart';
import 'package:fleet_consumer/backend/models/api_result.dart';
import 'package:fleet_consumer/backend/models/client.dart';
import 'package:fleet_consumer/backend/models/coupon.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/services/client_service.dart';
import 'package:fleet_consumer/config.dart';
import 'package:fleet_consumer/logger.dart';

class ApiService {
  final ClientService clientService;

  ApiService(this.clientService);

  Dio get _client {
    BaseOptions options = BaseOptions(
      baseUrl: Config.getBaseUrl(),
      followRedirects: true,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/json",
      },
      receiveTimeout: const Duration(seconds: 30),
    );

    Dio dio = Dio(options);

    // The interceptor which adds the X-CLIENT-SESSION header in all requests except the register(session creation)
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      if (options.path.contains("/client/register")) {
        return handler.next(options); //
      }

      String? sessionToken = await clientService.getSavedSessionToken();
      if (sessionToken != null) {
        options.headers["X-CLIENT-SESSION"] = sessionToken;
      }

      return handler.next(options);
    }));

    return dio;
  }

  Future<List<Service>> getServices() {
    return _client.get("/service").then((res) {
      return ApiResult.fromJson(
          res.data,
          (v) => List<Service>.from(
              (v as List<dynamic>).map((e) => Service.fromJson(e))));
    }).then((value) => value.data!);
  }

  Future<Payment> pay(
      {required Product product,
      required String debitDestination,
      required String creditDestination,
      String couponCode = "",
      int amount = 0}) {
    return _client.post("/product/${product.uuid}/pay", data: {
      "debit_destination": debitDestination,
      "credit_destination": creditDestination,
      "coupon_code": couponCode,
      "amount": amount
    }).then((res) async {
      // Checking the session state to know if it needs to be created again or refreshed only
      String sessionAction = res.headers.value("X-CLIENT-SESSION-ACTION") ?? "";

      final Future<Client> client =
          clientService.collectClientData().then((client) => client);
      if (sessionAction == "terminated") {
        createSession(await client);
      } else if (sessionAction == "refresh") {
        updateSession(await client);
      }

      return ApiResult.fromJson(
          res.data, (v) => Payment.fromJson(v as Map<String, dynamic>));
    }).then((value) => value.data!);
  }

  Future<Payment> getPayment(String code) {
    return _client.get("/payment/$code").then((res) {
      return ApiResult.fromJson(
          res.data, (v) => Payment.fromJson(v as Map<String, dynamic>));
    }).then((value) => value.data!);
  }

  Future<Coupon> getCoupon(String code) {
    return _client.get("/coupon/$code").then((res) {
      return ApiResult.fromJson(
          res.data, (v) => Coupon.fromJson(v as Map<String, dynamic>));
    }).then((value) => value.data!);
  }

  /// Create a new session with colleted data contained in the object [client]
  Future<void> createSession(Client client) {
    return _client
        .post("/client/register", data: client.toJson())
        .then((res) async {
      String? sessionToken;
      final data = res.data;
      sessionToken = data["data"]!["session_token"] ?? "";
      await clientService.saveSession(sessionToken!);
      return sessionToken;
    }).then((value) => logger.info("New session created with token: $value"));
  }

  /// Send collected data stored into the [client] object
  Future<void> updateSession(Client client) {
    return _client.patch("/client", data: client.toJson()).then((res) async {
      if (res.statusCode == 401 || res.statusCode == 403) {
        logger.warning(
            "Error when sending collected data, creating a new session");
        return await createSession(client);
      }
      return logger.info("Session Data Updated with success");
    });
  }
}
