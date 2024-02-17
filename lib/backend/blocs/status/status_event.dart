part of 'status_bloc.dart';

@immutable
abstract class StatusEvent {}

class RequestStatusCheckEvent extends StatusEvent {}

class PaymentUpdatedEvent extends StatusEvent {
  final Payment payment;
  PaymentUpdatedEvent(this.payment);
}
