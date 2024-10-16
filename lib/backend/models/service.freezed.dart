// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return _Service.fromJson(json);
}

/// @nodoc
mixin _$Service {
  String get uuid => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  bool get enabled => throw _privateConstructorUsedError;
  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(name: "min_amount")
  int? get minAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "max_amount")
  int? get maxAmount => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "form_input_label")
  String get formInputLabel => throw _privateConstructorUsedError;
  @JsonKey(name: "form_input_placeholder")
  String get formInputPlaceholder => throw _privateConstructorUsedError;
  @JsonKey(name: "form_input_regex")
  String get formInputRegex => throw _privateConstructorUsedError;

  /// Serializes this Service to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ServiceCopyWith<Service> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
  @useResult
  $Res call(
      {String uuid,
      String image,
      String name,
      String description,
      String kind,
      bool enabled,
      List<Product> products,
      @JsonKey(name: "min_amount") int? minAmount,
      @JsonKey(name: "max_amount") int? maxAmount,
      int? amount,
      @JsonKey(name: "form_input_label") String formInputLabel,
      @JsonKey(name: "form_input_placeholder") String formInputPlaceholder,
      @JsonKey(name: "form_input_regex") String formInputRegex});
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? kind = null,
    Object? enabled = null,
    Object? products = null,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? amount = freezed,
    Object? formInputLabel = null,
    Object? formInputPlaceholder = null,
    Object? formInputRegex = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      formInputLabel: null == formInputLabel
          ? _value.formInputLabel
          : formInputLabel // ignore: cast_nullable_to_non_nullable
              as String,
      formInputPlaceholder: null == formInputPlaceholder
          ? _value.formInputPlaceholder
          : formInputPlaceholder // ignore: cast_nullable_to_non_nullable
              as String,
      formInputRegex: null == formInputRegex
          ? _value.formInputRegex
          : formInputRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceImplCopyWith<$Res> implements $ServiceCopyWith<$Res> {
  factory _$$ServiceImplCopyWith(
          _$ServiceImpl value, $Res Function(_$ServiceImpl) then) =
      __$$ServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String image,
      String name,
      String description,
      String kind,
      bool enabled,
      List<Product> products,
      @JsonKey(name: "min_amount") int? minAmount,
      @JsonKey(name: "max_amount") int? maxAmount,
      int? amount,
      @JsonKey(name: "form_input_label") String formInputLabel,
      @JsonKey(name: "form_input_placeholder") String formInputPlaceholder,
      @JsonKey(name: "form_input_regex") String formInputRegex});
}

/// @nodoc
class __$$ServiceImplCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$ServiceImpl>
    implements _$$ServiceImplCopyWith<$Res> {
  __$$ServiceImplCopyWithImpl(
      _$ServiceImpl _value, $Res Function(_$ServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? kind = null,
    Object? enabled = null,
    Object? products = null,
    Object? minAmount = freezed,
    Object? maxAmount = freezed,
    Object? amount = freezed,
    Object? formInputLabel = null,
    Object? formInputPlaceholder = null,
    Object? formInputRegex = null,
  }) {
    return _then(_$ServiceImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      kind: null == kind
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      minAmount: freezed == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAmount: freezed == maxAmount
          ? _value.maxAmount
          : maxAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      formInputLabel: null == formInputLabel
          ? _value.formInputLabel
          : formInputLabel // ignore: cast_nullable_to_non_nullable
              as String,
      formInputPlaceholder: null == formInputPlaceholder
          ? _value.formInputPlaceholder
          : formInputPlaceholder // ignore: cast_nullable_to_non_nullable
              as String,
      formInputRegex: null == formInputRegex
          ? _value.formInputRegex
          : formInputRegex // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceImpl extends _Service {
  const _$ServiceImpl(
      {this.uuid = "",
      this.image = "",
      this.name = "",
      this.description = "",
      this.kind = "",
      this.enabled = false,
      final List<Product> products = const [],
      @JsonKey(name: "min_amount") this.minAmount = null,
      @JsonKey(name: "max_amount") this.maxAmount = null,
      this.amount = null,
      @JsonKey(name: "form_input_label") this.formInputLabel = "",
      @JsonKey(name: "form_input_placeholder") this.formInputPlaceholder = "",
      @JsonKey(name: "form_input_regex") this.formInputRegex = ""})
      : _products = products,
        super._();

  factory _$ServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceImplFromJson(json);

  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String kind;
  @override
  @JsonKey()
  final bool enabled;
  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  @JsonKey(name: "min_amount")
  final int? minAmount;
  @override
  @JsonKey(name: "max_amount")
  final int? maxAmount;
  @override
  @JsonKey()
  final int? amount;
  @override
  @JsonKey(name: "form_input_label")
  final String formInputLabel;
  @override
  @JsonKey(name: "form_input_placeholder")
  final String formInputPlaceholder;
  @override
  @JsonKey(name: "form_input_regex")
  final String formInputRegex;

  @override
  String toString() {
    return 'Service(uuid: $uuid, image: $image, name: $name, description: $description, kind: $kind, enabled: $enabled, products: $products, minAmount: $minAmount, maxAmount: $maxAmount, amount: $amount, formInputLabel: $formInputLabel, formInputPlaceholder: $formInputPlaceholder, formInputRegex: $formInputRegex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.kind, kind) || other.kind == kind) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.maxAmount, maxAmount) ||
                other.maxAmount == maxAmount) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.formInputLabel, formInputLabel) ||
                other.formInputLabel == formInputLabel) &&
            (identical(other.formInputPlaceholder, formInputPlaceholder) ||
                other.formInputPlaceholder == formInputPlaceholder) &&
            (identical(other.formInputRegex, formInputRegex) ||
                other.formInputRegex == formInputRegex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      image,
      name,
      description,
      kind,
      enabled,
      const DeepCollectionEquality().hash(_products),
      minAmount,
      maxAmount,
      amount,
      formInputLabel,
      formInputPlaceholder,
      formInputRegex);

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      __$$ServiceImplCopyWithImpl<_$ServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceImplToJson(
      this,
    );
  }
}

abstract class _Service extends Service {
  const factory _Service(
          {final String uuid,
          final String image,
          final String name,
          final String description,
          final String kind,
          final bool enabled,
          final List<Product> products,
          @JsonKey(name: "min_amount") final int? minAmount,
          @JsonKey(name: "max_amount") final int? maxAmount,
          final int? amount,
          @JsonKey(name: "form_input_label") final String formInputLabel,
          @JsonKey(name: "form_input_placeholder")
          final String formInputPlaceholder,
          @JsonKey(name: "form_input_regex") final String formInputRegex}) =
      _$ServiceImpl;
  const _Service._() : super._();

  factory _Service.fromJson(Map<String, dynamic> json) = _$ServiceImpl.fromJson;

  @override
  String get uuid;
  @override
  String get image;
  @override
  String get name;
  @override
  String get description;
  @override
  String get kind;
  @override
  bool get enabled;
  @override
  List<Product> get products;
  @override
  @JsonKey(name: "min_amount")
  int? get minAmount;
  @override
  @JsonKey(name: "max_amount")
  int? get maxAmount;
  @override
  int? get amount;
  @override
  @JsonKey(name: "form_input_label")
  String get formInputLabel;
  @override
  @JsonKey(name: "form_input_placeholder")
  String get formInputPlaceholder;
  @override
  @JsonKey(name: "form_input_regex")
  String get formInputRegex;

  /// Create a copy of Service
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceImplCopyWith<_$ServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
