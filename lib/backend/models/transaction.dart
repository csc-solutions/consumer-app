import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'transaction.g.dart';
part 'transaction.freezed.dart';

@unfreezed
class Transaction with _$Transaction {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  @Entity(realClass: Transaction)
  factory Transaction({
    int? amountReceived,
    @Id() @Default(0) int id,
    required int amount,
    required String status,
    required String type,
    required String userReference,
    required String uuid,
    required String paymentMethodCode,
    required String currencyCode,
    required String countryCode,
    required String recipient,
    String? description,
    int? isMock,
    required DateTime createdAt,
    DateTime? updatedAt,
    String? customerId,
    String? customerName,
    String? customerAddress,
    String? customerPhone,
  }) = _Transaction;
  Transaction._();
  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  Color displayStatusColor() {
    switch (status) {
      case "SUCCESS":
        return Colors.green;
      case "FAILED":
      case "CANCELLED":
        return Colors.red;
      case "PENDING":
      case "WAITING_FOR_PAYMENT":
        return Colors.orange;
      default:
        return Colors.red;
    }
  }

  String displayStatus() {
    switch (status) {
      case "SUCCESS":
        return "Succès";
      case "FAILED":
      case "CANCELLED":
        return "Échec";
      case "PENDING":
      case "WAITING_FOR_PAYMENT":
        return "En attente";
      default:
        return "Inconnu";
    }
  }
}
