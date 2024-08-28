// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentImpl _$$PaymentImplFromJson(Map<String, dynamic> json) =>
    _$PaymentImpl(
      uuid: json['uuid'] as String? ?? "",
      status: $enumDecodeNullable(_$PaymentStatusEnumEnumMap, json['status']) ??
          PaymentStatusEnum.draft,
      code: json['code'] as String? ?? "",
      debitDestination: json['debit_destination'] as String? ?? "",
      creditDestination: json['credit_destination'] as String? ?? "",
      amount: json['amount'] == null ? 0 : _stringToInt(json['amount']),
      discountedAmount: (json['discounted_amount'] as num?)?.toInt() ?? 0,
      product: json['product'] == null
          ? const Product()
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      service: json['service'] == null
          ? const Service()
          : Service.fromJson(json['service'] as Map<String, dynamic>),
      servicePayment: json['service_payment'] == null
          ? const Service()
          : Service.fromJson(json['service_payment'] as Map<String, dynamic>),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$PaymentImplToJson(_$PaymentImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'status': _$PaymentStatusEnumEnumMap[instance.status]!,
      'code': instance.code,
      'debit_destination': instance.debitDestination,
      'credit_destination': instance.creditDestination,
      'amount': instance.amount,
      'discounted_amount': instance.discountedAmount,
      'product': instance.product,
      'service': instance.service,
      'service_payment': instance.servicePayment,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

const _$PaymentStatusEnumEnumMap = {
  PaymentStatusEnum.draft: 'draft',
  PaymentStatusEnum.creditPending: 'creditPending',
  PaymentStatusEnum.creditError: 'creditError',
  PaymentStatusEnum.initError: 'initError',
  PaymentStatusEnum.success: 'success',
  PaymentStatusEnum.debitPending: 'debitPending',
  PaymentStatusEnum.debitError: 'debitError',
};
