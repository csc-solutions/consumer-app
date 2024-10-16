// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initiate_transaction_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InitiateTransactionResult _$InitiateTransactionResultFromJson(
    Map<String, dynamic> json) {
  return _InitiateTransactionResult.fromJson(json);
}

/// @nodoc
mixin _$InitiateTransactionResult {
  Transaction get transaction => throw _privateConstructorUsedError;

  /// Serializes this InitiateTransactionResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InitiateTransactionResultCopyWith<InitiateTransactionResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitiateTransactionResultCopyWith<$Res> {
  factory $InitiateTransactionResultCopyWith(InitiateTransactionResult value,
          $Res Function(InitiateTransactionResult) then) =
      _$InitiateTransactionResultCopyWithImpl<$Res, InitiateTransactionResult>;
  @useResult
  $Res call({Transaction transaction});

  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class _$InitiateTransactionResultCopyWithImpl<$Res,
        $Val extends InitiateTransactionResult>
    implements $InitiateTransactionResultCopyWith<$Res> {
  _$InitiateTransactionResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ) as $Val);
  }

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitiateTransactionResultImplCopyWith<$Res>
    implements $InitiateTransactionResultCopyWith<$Res> {
  factory _$$InitiateTransactionResultImplCopyWith(
          _$InitiateTransactionResultImpl value,
          $Res Function(_$InitiateTransactionResultImpl) then) =
      __$$InitiateTransactionResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$InitiateTransactionResultImplCopyWithImpl<$Res>
    extends _$InitiateTransactionResultCopyWithImpl<$Res,
        _$InitiateTransactionResultImpl>
    implements _$$InitiateTransactionResultImplCopyWith<$Res> {
  __$$InitiateTransactionResultImplCopyWithImpl(
      _$InitiateTransactionResultImpl _value,
      $Res Function(_$InitiateTransactionResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$InitiateTransactionResultImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InitiateTransactionResultImpl implements _InitiateTransactionResult {
  _$InitiateTransactionResultImpl({required this.transaction});

  factory _$InitiateTransactionResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$InitiateTransactionResultImplFromJson(json);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'InitiateTransactionResult(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitiateTransactionResultImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitiateTransactionResultImplCopyWith<_$InitiateTransactionResultImpl>
      get copyWith => __$$InitiateTransactionResultImplCopyWithImpl<
          _$InitiateTransactionResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InitiateTransactionResultImplToJson(
      this,
    );
  }
}

abstract class _InitiateTransactionResult implements InitiateTransactionResult {
  factory _InitiateTransactionResult({required final Transaction transaction}) =
      _$InitiateTransactionResultImpl;

  factory _InitiateTransactionResult.fromJson(Map<String, dynamic> json) =
      _$InitiateTransactionResultImpl.fromJson;

  @override
  Transaction get transaction;

  /// Create a copy of InitiateTransactionResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitiateTransactionResultImplCopyWith<_$InitiateTransactionResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}
