// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      uuid: json['uuid'] as String? ?? "",
      color: json['color'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      isDefault: json['default'] as bool? ?? false,
      isFeatured: json['featured'] as bool? ?? false,
      isPromoted: json['promoted'] as bool? ?? false,
      tag: $enumDecodeNullable(_$ProductTagEnumMap, json['tag']),
      fixedPrice: json['fixed_price'] as bool? ?? true,
      price: (json['price'] as num?)?.toInt() ?? null,
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'color': instance.color,
      'name': instance.name,
      'description': instance.description,
      'default': instance.isDefault,
      'featured': instance.isFeatured,
      'promoted': instance.isPromoted,
      'tag': _$ProductTagEnumMap[instance.tag],
      'fixed_price': instance.fixedPrice,
      'price': instance.price,
    };

const _$ProductTagEnumMap = {
  ProductTag.daily: 'daily',
  ProductTag.weekly: 'weekly',
  ProductTag.monthly: 'monthly',
};
