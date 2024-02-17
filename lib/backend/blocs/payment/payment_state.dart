
part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  factory PaymentState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(PaymentForm()) PaymentForm form,
    @Default(Payment()) Payment payment,
  }) = _PaymentState;
}
