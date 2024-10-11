import 'package:dio/dio.dart';
import 'package:fleet_consumer/backend/blocs/client/client_cubit.dart';
import 'package:fleet_consumer/backend/models/api_result.dart';
import 'package:fleet_consumer/backend/models/client.dart';
import 'package:fleet_consumer/backend/models/coupon.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/config.dart';

class ApiService {
  final ClientCubit clientCubit;

  ApiService(this.clientCubit); // Le cubit est passé en paramètre ici

  Dio get _client {
    BaseOptions options = BaseOptions(
        baseUrl: Config.getBaseUrl(),
        followRedirects: true,
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
          "X-CLIENT-SESSION": clientCubit.state.sessionToken
        },
        receiveTimeout: const Duration(seconds: 30));
    return Dio(options);
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
      // Verification de l'etat de la session, pour recreer ou rafraichir.
      if (res.statusCode == 401 || res.statusCode == 403) {
        String sessionAction =
            res.headers.value("X-CLIENT-SESSION-ACTION") ?? "";

        if (sessionAction == "terminated") {
          final Future<Client> client =
              clientCubit.collectClientData().then((client) => client);
          createSession(await client);
        } else if (sessionAction == "refresh") {
          final Future<Client> client =
              clientCubit.collectClientData().then((client) => client);
          sendCollectedData(await client);
        }
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

  // Créer une nouvelles session avec les données collectée contenues dans l'objet client
  Future<void> createSession(Client client) {
    Dio apiClient = Dio(_client.options);
    apiClient.options.headers.remove("X-CLIENT-SESSION");
    return apiClient
        .post("/client/register", data: client.toJson())
        .then((res) {
      if (res.statusCode == 201) {
        Map<String, Map<String, String?>> data =
            res.data as Map<String, Map<String, String?>>;
        String sessionToken = data["data"]!["session_token"] ?? "";
        clientCubit.saveSession(sessionToken, Config.getXClientSessionKey());
      }
    }).then((value) => {});
  }

  /// Envoyer les données collectées contenues dans l'objet client
  Future<void> sendCollectedData(Client client) {
    return _client.patch("/client", data: client.toJson()).then((res) => {});
  }
}
