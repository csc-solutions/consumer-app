// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  String get uuid => throw _privateConstructorUsedError;
  String get color => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "default")
  bool get isDefault => throw _privateConstructorUsedError;
  @JsonKey(name: "featured")
  bool get isFeatured => throw _privateConstructorUsedError;
  @JsonKey(name: "promoted")
  bool get isPromoted => throw _privateConstructorUsedError;
  ProductTag? get tag => throw _privateConstructorUsedError;
  @JsonKey(name: "fixed_price")
  bool get fixedPrice => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {String uuid,
      String color,
      String name,
      String description,
      @JsonKey(name: "default") bool isDefault,
      @JsonKey(name: "featured") bool isFeatured,
      @JsonKey(name: "promoted") bool isPromoted,
      ProductTag? tag,
      @JsonKey(name: "fixed_price") bool fixedPrice,
      int? price});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? color = null,
    Object? name = null,
    Object? description = null,
    Object? isDefault = null,
    Object? isFeatured = null,
    Object? isPromoted = null,
    Object? tag = freezed,
    Object? fixedPrice = null,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isPromoted: null == isPromoted
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as ProductTag?,
      fixedPrice: null == fixedPrice
          ? _value.fixedPrice
          : fixedPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String color,
      String name,
      String description,
      @JsonKey(name: "default") bool isDefault,
      @JsonKey(name: "featured") bool isFeatured,
      @JsonKey(name: "promoted") bool isPromoted,
      ProductTag? tag,
      @JsonKey(name: "fixed_price") bool fixedPrice,
      int? price});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? color = null,
    Object? name = null,
    Object? description = null,
    Object? isDefault = null,
    Object? isFeatured = null,
    Object? isPromoted = null,
    Object? tag = freezed,
    Object? fixedPrice = null,
    Object? price = freezed,
  }) {
    return _then(_$ProductImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDefault: null == isDefault
          ? _value.isDefault
          : isDefault // ignore: cast_nullable_to_non_nullable
              as bool,
      isFeatured: null == isFeatured
          ? _value.isFeatured
          : isFeatured // ignore: cast_nullable_to_non_nullable
              as bool,
      isPromoted: null == isPromoted
          ? _value.isPromoted
          : isPromoted // ignore: cast_nullable_to_non_nullable
              as bool,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as ProductTag?,
      fixedPrice: null == fixedPrice
          ? _value.fixedPrice
          : fixedPrice // ignore: cast_nullable_to_non_nullable
              as bool,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.uuid = "",
      this.color = "",
      this.name = "",
      this.description = "",
      @JsonKey(name: "default") this.isDefault = false,
      @JsonKey(name: "featured") this.isFeatured = false,
      @JsonKey(name: "promoted") this.isPromoted = false,
      this.tag,
      @JsonKey(name: "fixed_price") this.fixedPrice = true,
      this.price = null});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String color;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey(name: "default")
  final bool isDefault;
  @override
  @JsonKey(name: "featured")
  final bool isFeatured;
  @override
  @JsonKey(name: "promoted")
  final bool isPromoted;
  @override
  final ProductTag? tag;
  @override
  @JsonKey(name: "fixed_price")
  final bool fixedPrice;
  @override
  @JsonKey()
  final int? price;

  @override
  String toString() {
    return 'Product(uuid: $uuid, color: $color, name: $name, description: $description, isDefault: $isDefault, isFeatured: $isFeatured, isPromoted: $isPromoted, tag: $tag, fixedPrice: $fixedPrice, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isDefault, isDefault) ||
                other.isDefault == isDefault) &&
            (identical(other.isFeatured, isFeatured) ||
                other.isFeatured == isFeatured) &&
            (identical(other.isPromoted, isPromoted) ||
                other.isPromoted == isPromoted) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.fixedPrice, fixedPrice) ||
                other.fixedPrice == fixedPrice) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, color, name, description,
      isDefault, isFeatured, isPromoted, tag, fixedPrice, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final String uuid,
      final String color,
      final String name,
      final String description,
      @JsonKey(name: "default") final bool isDefault,
      @JsonKey(name: "featured") final bool isFeatured,
      @JsonKey(name: "promoted") final bool isPromoted,
      final ProductTag? tag,
      @JsonKey(name: "fixed_price") final bool fixedPrice,
      final int? price}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  String get uuid;
  @override
  String get color;
  @override
  String get name;
  @override
  String get description;
  @override
  @JsonKey(name: "default")
  bool get isDefault;
  @override
  @JsonKey(name: "featured")
  bool get isFeatured;
  @override
  @JsonKey(name: "promoted")
  bool get isPromoted;
  @override
  ProductTag? get tag;
  @override
  @JsonKey(name: "fixed_price")
  bool get fixedPrice;
  @override
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
