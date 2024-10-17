// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResult<T> _$ApiResultFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResult<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResult<T> {
  T? get data => throw _privateConstructorUsedError;

  /// Serializes this ApiResult to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResultCopyWith<T, ApiResult<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResultCopyWith<T, $Res> {
  factory $ApiResultCopyWith(
          ApiResult<T> value, $Res Function(ApiResult<T>) then) =
      _$ApiResultCopyWithImpl<T, $Res, ApiResult<T>>;
  @useResult
  $Res call({T? data});
}

/// @nodoc
class _$ApiResultCopyWithImpl<T, $Res, $Val extends ApiResult<T>>
    implements $ApiResultCopyWith<T, $Res> {
  _$ApiResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResultImplCopyWith<T, $Res>
    implements $ApiResultCopyWith<T, $Res> {
  factory _$$ApiResultImplCopyWith(
          _$ApiResultImpl<T> value, $Res Function(_$ApiResultImpl<T>) then) =
      __$$ApiResultImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? data});
}

/// @nodoc
class __$$ApiResultImplCopyWithImpl<T, $Res>
    extends _$ApiResultCopyWithImpl<T, $Res, _$ApiResultImpl<T>>
    implements _$$ApiResultImplCopyWith<T, $Res> {
  __$$ApiResultImplCopyWithImpl(
      _$ApiResultImpl<T> _value, $Res Function(_$ApiResultImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ApiResultImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResultImpl<T> implements _ApiResult<T> {
  const _$ApiResultImpl({this.data});

  factory _$ApiResultImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResultImplFromJson(json, fromJsonT);

  @override
  final T? data;

  @override
  String toString() {
    return 'ApiResult<$T>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResultImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResultImplCopyWith<T, _$ApiResultImpl<T>> get copyWith =>
      __$$ApiResultImplCopyWithImpl<T, _$ApiResultImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResultImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResult<T> implements ApiResult<T> {
  const factory _ApiResult({final T? data}) = _$ApiResultImpl<T>;

  factory _ApiResult.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResultImpl<T>.fromJson;

  @override
  T? get data;

  /// Create a copy of ApiResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResultImplCopyWith<T, _$ApiResultImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
