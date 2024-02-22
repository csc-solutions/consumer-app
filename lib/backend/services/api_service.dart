import 'package:dio/dio.dart';
import 'package:fleet_consumer/backend/models/api_result.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/config.dart';

class ApiService {
  ApiService();
  Dio get _client {
    BaseOptions options = BaseOptions(
        baseUrl: Config.getBaseUrl(),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/json",
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
      int amount = 0}) {
    return _client.post("/product/${product.uuid}/pay", data: {
      "debit_destination": debitDestination,
      "credit_destination": creditDestination,
      "amount": amount
    }).then((res) {
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
}
