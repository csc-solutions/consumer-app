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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InitiateTransactionResult _$InitiateTransactionResultFromJson(
    Map<String, dynamic> json) {
  return _InitiateTransactionResult.fromJson(json);
}

/// @nodoc
mixin _$InitiateTransactionResult {
  Transaction get transaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $TransactionCopyWith<$Res> get transaction {
    return $TransactionCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InitiateTransactionResultCopyWith<$Res>
    implements $InitiateTransactionResultCopyWith<$Res> {
  factory _$$_InitiateTransactionResultCopyWith(
          _$_InitiateTransactionResult value,
          $Res Function(_$_InitiateTransactionResult) then) =
      __$$_InitiateTransactionResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Transaction transaction});

  @override
  $TransactionCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$_InitiateTransactionResultCopyWithImpl<$Res>
    extends _$InitiateTransactionResultCopyWithImpl<$Res,
        _$_InitiateTransactionResult>
    implements _$$_InitiateTransactionResultCopyWith<$Res> {
  __$$_InitiateTransactionResultCopyWithImpl(
      _$_InitiateTransactionResult _value,
      $Res Function(_$_InitiateTransactionResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$_InitiateTransactionResult(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as Transaction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InitiateTransactionResult implements _InitiateTransactionResult {
  _$_InitiateTransactionResult({required this.transaction});

  factory _$_InitiateTransactionResult.fromJson(Map<String, dynamic> json) =>
      _$$_InitiateTransactionResultFromJson(json);

  @override
  final Transaction transaction;

  @override
  String toString() {
    return 'InitiateTransactionResult(transaction: $transaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitiateTransactionResult &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitiateTransactionResultCopyWith<_$_InitiateTransactionResult>
      get copyWith => __$$_InitiateTransactionResultCopyWithImpl<
          _$_InitiateTransactionResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InitiateTransactionResultToJson(
      this,
    );
  }
}

abstract class _InitiateTransactionResult implements InitiateTransactionResult {
  factory _InitiateTransactionResult({required final Transaction transaction}) =
      _$_InitiateTransactionResult;

  factory _InitiateTransactionResult.fromJson(Map<String, dynamic> json) =
      _$_InitiateTransactionResult.fromJson;

  @override
  Transaction get transaction;
  @override
  @JsonKey(ignore: true)
  _$$_InitiateTransactionResultCopyWith<_$_InitiateTransactionResult>
      get copyWith => throw _privateConstructorUsedError;
}
