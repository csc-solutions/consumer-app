// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentState {
  FormzSubmissionStatus get status => throw _privateConstructorUsedError;
  PaymentForm get form => throw _privateConstructorUsedError;
  Payment get payment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentStateCopyWith<PaymentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentStateCopyWith<$Res> {
  factory $PaymentStateCopyWith(
          PaymentState value, $Res Function(PaymentState) then) =
      _$PaymentStateCopyWithImpl<$Res, PaymentState>;
  @useResult
  $Res call({FormzSubmissionStatus status, PaymentForm form, Payment payment});

  $PaymentFormCopyWith<$Res> get form;
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class _$PaymentStateCopyWithImpl<$Res, $Val extends PaymentState>
    implements $PaymentStateCopyWith<$Res> {
  _$PaymentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? form = null,
    Object? payment = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as PaymentForm,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentFormCopyWith<$Res> get form {
    return $PaymentFormCopyWith<$Res>(_value.form, (value) {
      return _then(_value.copyWith(form: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PaymentStateImplCopyWith<$Res>
    implements $PaymentStateCopyWith<$Res> {
  factory _$$PaymentStateImplCopyWith(
          _$PaymentStateImpl value, $Res Function(_$PaymentStateImpl) then) =
      __$$PaymentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FormzSubmissionStatus status, PaymentForm form, Payment payment});

  @override
  $PaymentFormCopyWith<$Res> get form;
  @override
  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$PaymentStateImplCopyWithImpl<$Res>
    extends _$PaymentStateCopyWithImpl<$Res, _$PaymentStateImpl>
    implements _$$PaymentStateImplCopyWith<$Res> {
  __$$PaymentStateImplCopyWithImpl(
      _$PaymentStateImpl _value, $Res Function(_$PaymentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? form = null,
    Object? payment = null,
  }) {
    return _then(_$PaymentStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      form: null == form
          ? _value.form
          : form // ignore: cast_nullable_to_non_nullable
              as PaymentForm,
      payment: null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
    ));
  }
}

/// @nodoc

class _$PaymentStateImpl implements _PaymentState {
  _$PaymentStateImpl(
      {this.status = FormzSubmissionStatus.initial,
      this.form = const PaymentForm(),
      this.payment = const Payment()});

  @override
  @JsonKey()
  final FormzSubmissionStatus status;
  @override
  @JsonKey()
  final PaymentForm form;
  @override
  @JsonKey()
  final Payment payment;

  @override
  String toString() {
    return 'PaymentState(status: $status, form: $form, payment: $payment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.form, form) || other.form == form) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, form, payment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      __$$PaymentStateImplCopyWithImpl<_$PaymentStateImpl>(this, _$identity);
}

abstract class _PaymentState implements PaymentState {
  factory _PaymentState(
      {final FormzSubmissionStatus status,
      final PaymentForm form,
      final Payment payment}) = _$PaymentStateImpl;

  @override
  FormzSubmissionStatus get status;
  @override
  PaymentForm get form;
  @override
  Payment get payment;
  @override
  @JsonKey(ignore: true)
  _$$PaymentStateImplCopyWith<_$PaymentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
