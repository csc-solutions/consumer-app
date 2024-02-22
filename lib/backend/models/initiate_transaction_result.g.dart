// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initiate_transaction_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InitiateTransactionResultImpl _$$InitiateTransactionResultImplFromJson(
        Map<String, dynamic> json) =>
    _$InitiateTransactionResultImpl(
      transaction:
          Transaction.fromJson(json['transaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InitiateTransactionResultImplToJson(
        _$InitiateTransactionResultImpl instance) =>
    <String, dynamic>{
      'transaction': instance.transaction,
    };
