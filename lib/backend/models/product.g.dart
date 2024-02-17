// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      uuid: json['uuid'] as String? ?? "",
      color: json['color'] as String? ?? "",
      name: json['name'] as String? ?? "",
      description: json['description'] as String? ?? "",
      isDefault: json['default'] as bool? ?? false,
      fixedPrice: json['fixed_price'] as bool? ?? true,
      price: json['price'] as int? ?? null,
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'color': instance.color,
      'name': instance.name,
      'description': instance.description,
      'default': instance.isDefault,
      'fixed_price': instance.fixedPrice,
      'price': instance.price,
    };
