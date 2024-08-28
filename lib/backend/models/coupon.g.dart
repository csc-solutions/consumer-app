// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponImpl _$$CouponImplFromJson(Map<String, dynamic> json) => _$CouponImpl(
      code: json['code'] as String? ?? "",
      enabled: json['enabled'] as bool? ?? false,
      percentage: (json['percentage'] as num?)?.toInt() ?? 0,
      fixed: (json['fixed'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CouponImplToJson(_$CouponImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'enabled': instance.enabled,
      'percentage': instance.percentage,
      'fixed': instance.fixed,
    };
