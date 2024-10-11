import 'package:dio/dio.dart';
import 'package:fleet_consumer/backend/models/api_result.dart';
import 'package:fleet_consumer/backend/models/client.dart';
import 'package:fleet_consumer/backend/models/coupon.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/services/client_service.dart';
import 'package:fleet_consumer/config.dart';
import 'package:flutter/material.dart';

class ApiService {
  final ClientService clientService;

  ApiService(
      this.clientService); // Le service d'authentification client est passé en paramètre ici

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

    // Ajouter l'intercepteur qui rajoute le header X-CLIENT-SESSION sur toutes les requettes sauf le register
    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (options, handler) async {
      if (options.path.contains("/client/register")) {
        return handler.next(options); //
      }

      String? sessionToken = await clientService
          .getSavedSessionToken(Config.getXClientSessionKey());
      if (sessionToken != null) {
        options.headers["X-CLIENT-SESSION"] = sessionToken;
        debugPrint("X-CLIENT-SESSION ajouté: $sessionToken");
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
      // Verification de l'etat de la session, pour recreer ou rafraichir.
      if (res.statusCode == 401 || res.statusCode == 403) {
        String sessionAction =
            res.headers.value("X-CLIENT-SESSION-ACTION") ?? "";

        if (sessionAction == "terminated") {
          final Future<Client> client =
              clientService.collectClientData().then((client) => client);
          createSession(await client);
        } else if (sessionAction == "refresh") {
          final Future<Client> client =
              clientService.collectClientData().then((client) => client);
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
    return _client
        .post("/client/register", data: client.toJson())
        .then((res) async {
      if (res.statusCode == 201) {
        final data = res.data;
        String sessionToken = data["data"]!["session_token"] ?? "";
        debugPrint("On a un wey");
        await clientService.saveSession(
            sessionToken, Config.getXClientSessionKey());
      }
    }).then((value) => {});
  }

  /// Envoyer les données collectées contenues dans l'objet client
  Future<void> sendCollectedData(Client client) {
    return _client.patch("/client", data: client.toJson()).then((res) => {});
  }
}
