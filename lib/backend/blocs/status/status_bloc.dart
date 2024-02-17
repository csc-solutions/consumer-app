import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fleet_consumer/backend/models/payment.dart';
import 'package:fleet_consumer/backend/models/payment_status_enum.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/logger.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:objectbox/objectbox.dart';

part 'status_bloc.freezed.dart';
part 'status_event.dart';
part 'status_state.dart';

class StatusBloc extends Bloc<StatusEvent, StatusState> {
  final Payment payment;
  final ApiService apiService;
  final Store store;
  Timer? verificationTimer;

  StatusBloc(this.payment, this.apiService, this.store)
      : super(StatusState(payment: payment)) {
    on<StatusEvent>((event, emit) {
      if (event is PaymentUpdatedEvent) {
        emit(StatusState(payment: event.payment, isVerifying: false));
      }
      if (event is RequestStatusCheckEvent && !state.isVerifying) {
        emit(state.copyWith(isVerifying: true));
        _check();
      }
    });
    if (payment.status.isPending) {
      requestVerification();
    }
  }

  Future<void> _check() async {
    verificationTimer?.cancel();
    verificationTimer = null;
    try {
      Payment result = (await apiService.getPayment(payment.code));
      add(PaymentUpdatedEvent(result));
      if (result.status.isPending) {
        verificationTimer =
            Timer(const Duration(seconds: 10), requestVerification);
      }
    } catch (e, s) {
      logger.info("failed to get transaction stratus", e, s);
      add(PaymentUpdatedEvent(state.payment));
    }
  }

  requestVerification() {
    add(RequestStatusCheckEvent());
  }

  @override
  Future<void> close() {
    verificationTimer?.cancel();
    return super.close();
  }
}
