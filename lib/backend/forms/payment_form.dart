import 'package:fleet_consumer/backend/forms/inputs/amount_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/destination_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/momo_number_input.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_form.freezed.dart';

@freezed
class PaymentForm with _$PaymentForm, FormzMixin {
  const factory PaymentForm({
    @Default(AmountInput.pure()) AmountInput amountInput,
    @Default(DestinationInput.pure()) DestinationInput destinationInput,
    @Default(MomoNumberInput.pure()) MomoNumberInput momoNumberInput,
  }) = _PaymentForm;
  const PaymentForm._();

  @override
  List<FormzInput> get inputs => [amountInput, destinationInput, momoNumberInput];
}
