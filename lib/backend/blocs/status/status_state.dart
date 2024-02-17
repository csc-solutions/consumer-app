part of 'status_bloc.dart';

@freezed
class StatusState with _$StatusState {
  factory StatusState({
    required Payment payment,
    @Default(false) bool isVerifying
  }) = _StatusState;
}
