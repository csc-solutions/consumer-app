// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceImpl _$$ServiceImplFromJson(Map<String, dynamic> json) =>
    _$ServiceImpl(
      uuid: json['uuid'] as String? ?? "",
      image: json['image'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      kind: json['kind'] as String? ?? "",
      enabled: json['enabled'] as bool? ?? false,
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      minAmount: json['min_amount'] as int? ?? null,
      maxAmount: json['max_amount'] as int? ?? null,
      amount: json['amount'] as int? ?? null,
      formInputLabel: json['form_input_label'] as String? ?? "",
      formInputPlaceholder: json['form_input_placeholder'] as String? ?? "",
      formInputRegex: json['form_input_regex'] as String? ?? "",
    );

Map<String, dynamic> _$$ServiceImplToJson(_$ServiceImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'image': instance.image,
      'name': instance.name,
      'description': instance.description,
      'kind': instance.kind,
      'enabled': instance.enabled,
      'products': instance.products,
      'min_amount': instance.minAmount,
      'max_amount': instance.maxAmount,
      'amount': instance.amount,
      'form_input_label': instance.formInputLabel,
      'form_input_placeholder': instance.formInputPlaceholder,
      'form_input_regex': instance.formInputRegex,
    };
