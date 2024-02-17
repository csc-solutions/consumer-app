part of 'service_cubit.dart';

enum ServiceStatus { loading, loaded, error }

@immutable
@freezed
sealed class ServiceState with _$ServiceState {
  factory ServiceState({
    @Default([]) List<Service> services,
    @Default(ServiceStatus.loading) ServiceStatus status,
  }) = _ServiceState;

  factory ServiceState.fromJson(Map<String, dynamic> json) =>
      _$ServiceStateFromJson(json);
}


