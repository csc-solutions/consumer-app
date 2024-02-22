// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      amountReceived: json['amount_received'] as int?,
      id: json['id'] as int? ?? 0,
      amount: json['amount'] as int,
      status: json['status'] as String,
      type: json['type'] as String,
      userReference: json['user_reference'] as String,
      uuid: json['uuid'] as String,
      paymentMethodCode: json['payment_method_code'] as String,
      currencyCode: json['currency_code'] as String,
      countryCode: json['country_code'] as String,
      recipient: json['recipient'] as String,
      description: json['description'] as String?,
      isMock: json['is_mock'] as int?,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      customerId: json['customer_id'] as String?,
      customerName: json['customer_name'] as String?,
      customerAddress: json['customer_address'] as String?,
      customerPhone: json['customer_phone'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'amount_received': instance.amountReceived,
      'id': instance.id,
      'amount': instance.amount,
      'status': instance.status,
      'type': instance.type,
      'user_reference': instance.userReference,
      'uuid': instance.uuid,
      'payment_method_code': instance.paymentMethodCode,
      'currency_code': instance.currencyCode,
      'country_code': instance.countryCode,
      'recipient': instance.recipient,
      'description': instance.description,
      'is_mock': instance.isMock,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'customer_id': instance.customerId,
      'customer_name': instance.customerName,
      'customer_address': instance.customerAddress,
      'customer_phone': instance.customerPhone,
    };
