// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_form.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentForm {
  AmountInput get amountInput => throw _privateConstructorUsedError;
  DestinationInput get destinationInput => throw _privateConstructorUsedError;
  MomoNumberInput get momoNumberInput => throw _privateConstructorUsedError;

  /// Create a copy of PaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaymentFormCopyWith<PaymentForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentFormCopyWith<$Res> {
  factory $PaymentFormCopyWith(
          PaymentForm value, $Res Function(PaymentForm) then) =
      _$PaymentFormCopyWithImpl<$Res, PaymentForm>;
  @useResult
  $Res call(
      {AmountInput amountInput,
      DestinationInput destinationInput,
      MomoNumberInput momoNumberInput});
}

/// @nodoc
class _$PaymentFormCopyWithImpl<$Res, $Val extends PaymentForm>
    implements $PaymentFormCopyWith<$Res> {
  _$PaymentFormCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInput = null,
    Object? destinationInput = null,
    Object? momoNumberInput = null,
  }) {
    return _then(_value.copyWith(
      amountInput: null == amountInput
          ? _value.amountInput
          : amountInput // ignore: cast_nullable_to_non_nullable
              as AmountInput,
      destinationInput: null == destinationInput
          ? _value.destinationInput
          : destinationInput // ignore: cast_nullable_to_non_nullable
              as DestinationInput,
      momoNumberInput: null == momoNumberInput
          ? _value.momoNumberInput
          : momoNumberInput // ignore: cast_nullable_to_non_nullable
              as MomoNumberInput,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentFormImplCopyWith<$Res>
    implements $PaymentFormCopyWith<$Res> {
  factory _$$PaymentFormImplCopyWith(
          _$PaymentFormImpl value, $Res Function(_$PaymentFormImpl) then) =
      __$$PaymentFormImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AmountInput amountInput,
      DestinationInput destinationInput,
      MomoNumberInput momoNumberInput});
}

/// @nodoc
class __$$PaymentFormImplCopyWithImpl<$Res>
    extends _$PaymentFormCopyWithImpl<$Res, _$PaymentFormImpl>
    implements _$$PaymentFormImplCopyWith<$Res> {
  __$$PaymentFormImplCopyWithImpl(
      _$PaymentFormImpl _value, $Res Function(_$PaymentFormImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountInput = null,
    Object? destinationInput = null,
    Object? momoNumberInput = null,
  }) {
    return _then(_$PaymentFormImpl(
      amountInput: null == amountInput
          ? _value.amountInput
          : amountInput // ignore: cast_nullable_to_non_nullable
              as AmountInput,
      destinationInput: null == destinationInput
          ? _value.destinationInput
          : destinationInput // ignore: cast_nullable_to_non_nullable
              as DestinationInput,
      momoNumberInput: null == momoNumberInput
          ? _value.momoNumberInput
          : momoNumberInput // ignore: cast_nullable_to_non_nullable
              as MomoNumberInput,
    ));
  }
}

/// @nodoc

class _$PaymentFormImpl extends _PaymentForm {
  const _$PaymentFormImpl(
      {this.amountInput = const AmountInput.pure(),
      this.destinationInput = const DestinationInput.pure(),
      this.momoNumberInput = const MomoNumberInput.pure()})
      : super._();

  @override
  @JsonKey()
  final AmountInput amountInput;
  @override
  @JsonKey()
  final DestinationInput destinationInput;
  @override
  @JsonKey()
  final MomoNumberInput momoNumberInput;

  @override
  String toString() {
    return 'PaymentForm(amountInput: $amountInput, destinationInput: $destinationInput, momoNumberInput: $momoNumberInput)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentFormImpl &&
            (identical(other.amountInput, amountInput) ||
                other.amountInput == amountInput) &&
            (identical(other.destinationInput, destinationInput) ||
                other.destinationInput == destinationInput) &&
            (identical(other.momoNumberInput, momoNumberInput) ||
                other.momoNumberInput == momoNumberInput));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, amountInput, destinationInput, momoNumberInput);

  /// Create a copy of PaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentFormImplCopyWith<_$PaymentFormImpl> get copyWith =>
      __$$PaymentFormImplCopyWithImpl<_$PaymentFormImpl>(this, _$identity);
}

abstract class _PaymentForm extends PaymentForm {
  const factory _PaymentForm(
      {final AmountInput amountInput,
      final DestinationInput destinationInput,
      final MomoNumberInput momoNumberInput}) = _$PaymentFormImpl;
  const _PaymentForm._() : super._();

  @override
  AmountInput get amountInput;
  @override
  DestinationInput get destinationInput;
  @override
  MomoNumberInput get momoNumberInput;

  /// Create a copy of PaymentForm
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaymentFormImplCopyWith<_$PaymentFormImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
