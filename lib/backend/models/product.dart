import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed()
class Product with _$Product {
  const factory Product({
    @Default("") String uuid,
    @Default("") String color,
    @Default("") String name,
    @Default("") String description,
    @JsonKey(name: "default") @Default(false) bool isDefault,
    @JsonKey(name: "fixed_price") @Default(true) bool fixedPrice,
    @Default(null) int? price,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
