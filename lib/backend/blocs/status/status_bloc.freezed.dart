// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StatusState {
  Payment get payment => throw _privateConstructorUsedError;
  bool get isVerifying => throw _privateConstructorUsedError;

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StatusStateCopyWith<StatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusStateCopyWith<$Res> {
  factory $StatusStateCopyWith(
          StatusState value, $Res Function(StatusState) then) =
      _$StatusStateCopyWithImpl<$Res, StatusState>;
  @useResult
  $Res call({Payment payment, bool isVerifying});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$StatusStateCopyWithImpl<$Res, $Val extends StatusState>
    implements $StatusStateCopyWith<$Res> {
  _$StatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
    Object? isVerifying = null,
  }) {
    return _then(_value.copyWith(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      isVerifying: null == isVerifying
          ? _value.isVerifying
          : isVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StatusStateImplCopyWith<$Res>
    implements $StatusStateCopyWith<$Res> {
  factory _$$StatusStateImplCopyWith(
          _$StatusStateImpl value, $Res Function(_$StatusStateImpl) then) =
      __$$StatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Payment payment, bool isVerifying});

  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$StatusStateImplCopyWithImpl<$Res>
    extends _$StatusStateCopyWithImpl<$Res, _$StatusStateImpl>
    implements _$$StatusStateImplCopyWith<$Res> {
  __$$StatusStateImplCopyWithImpl(
      _$StatusStateImpl _value, $Res Function(_$StatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
    Object? isVerifying = null,
  }) {
    return _then(_$StatusStateImpl(
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      isVerifying: null == isVerifying
          ? _value.isVerifying
          : isVerifying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$StatusStateImpl implements _StatusState {
  _$StatusStateImpl({required this.payment, this.isVerifying = false});

  @override
  final Payment payment;
  @override
  @JsonKey()
  final bool isVerifying;

  @override
  String toString() {
    return 'StatusState(payment: $payment, isVerifying: $isVerifying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusStateImpl &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.isVerifying, isVerifying) ||
                other.isVerifying == isVerifying));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment, isVerifying);

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusStateImplCopyWith<_$StatusStateImpl> get copyWith =>
      __$$StatusStateImplCopyWithImpl<_$StatusStateImpl>(this, _$identity);
}

abstract class _StatusState implements StatusState {
  factory _StatusState(
      {required final Payment payment,
      final bool isVerifying}) = _$StatusStateImpl;

  @override
  Payment get payment;
  @override
  bool get isVerifying;

  /// Create a copy of StatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusStateImplCopyWith<_$StatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
