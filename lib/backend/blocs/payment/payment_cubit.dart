import 'package:bloc/bloc.dart';
import 'package:fleet_consumer/backend/forms/inputs/amount_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/destination_input.dart';
import 'package:fleet_consumer/backend/forms/inputs/momo_number_input.dart';
import 'package:fleet_consumer/backend/forms/payment_form.dart';
import 'package:fleet_consumer/backend/models/payment_log.dart';
import 'package:fleet_consumer/backend/models/product.dart';
import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/logger.dart';
import 'package:formz/formz.dart';
import 'package:objectbox/objectbox.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_cubit.freezed.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final Store store;
  final ApiService apiService;
  final Service service;
  final Product product;

  PaymentCubit(this.apiService, this.store, this.service, this.product)
      : super(PaymentState(
            form: PaymentForm(
                destinationInput:
                    DestinationInput.pure(regex: service.formInputRegex),
                amountInput: AmountInput.pure(
                    min: service.minAmount,
                    max: service.maxAmount,
                    amount: product.fixedPrice ? product.price : null))));

  onAmountChanged(int amount) {
    if (product.fixedPrice) {
      return;
    }
    emit(state.copyWith(
        status: FormzSubmissionStatus.initial,
        form: state.form.copyWith(
            amountInput: AmountInput.dirty(
          value: amount,
          min: service.minAmount,
          max: service.maxAmount,
        ))));
  }

  onDestinationChanged(String phoneNumber) {
    emit(state.copyWith(
        status: FormzSubmissionStatus.initial,
        form: state.form.copyWith(
            destinationInput: DestinationInput.dirty(service.formInputRegex,
                value: phoneNumber))));
  }

  onMomoNumberChanged(String momoNumber) {
    emit(state.copyWith(
        status: FormzSubmissionStatus.initial,
        form: state.form.copyWith(
            momoNumberInput: MomoNumberInput.dirty(value: momoNumber))));
  }

  Future<void> submit() async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      var payment = await apiService.pay(
          product: product,
          debitDestination: state.form.momoNumberInput.value,
          creditDestination: state.form.destinationInput.value,
          amount: state.form.amountInput.value);
      emit(state.copyWith(
          status: FormzSubmissionStatus.success, payment: payment));
      store.box<PaymentLog>().put(payment.asPaymentLog);
    } catch (err, stackTrace) {
      logger.warning("failed to execute transaction", err, stackTrace);

      emit(state.copyWith(status: FormzSubmissionStatus.failure));
    }
  }
}
