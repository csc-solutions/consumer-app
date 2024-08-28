part of 'payment_cubit.dart';

@freezed
class PaymentState with _$PaymentState {
  factory PaymentState({
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(PaymentForm()) PaymentForm form,
    @Default(Payment()) Payment payment,
    @Default(Coupon()) Coupon coupon,
    @Default(Product()) Product product,
  }) = _PaymentState;

  const PaymentState._();

  bool get discounted {
    return coupon != const Coupon();
  }

  double get discountedAmount {
    double amount =
        (product.price?.toDouble() ?? form.amountInput.value).toDouble();
    double discount = coupon.fixed.toDouble();
    discount += (amount * ((coupon.percentage) / 100));
    return max<double>(0, amount - discount);
  }

  double get amount {
    return (product.price?.toDouble() ?? form.amountInput.value).toDouble();
  }
}
