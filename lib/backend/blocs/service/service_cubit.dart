import 'package:fleet_consumer/backend/models/service.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'service_cubit.freezed.dart';
part 'service_cubit.g.dart';

part 'service_state.dart';

class ServiceCubit extends HydratedCubit<ServiceState> {
  final ApiService apiService;
  ServiceCubit(this.apiService) : super(ServiceState()) {
    _load();
  }

  Future<List<Service>> _load() async {
    emit(state.copyWith(status: ServiceStatus.loading));
    return apiService.getServices().then((value) {
      emit(state.copyWith(services: value, status: ServiceStatus.loaded));
      return value;
    }).catchError((err, stackTrace) {
      debugPrintStack(
        label: "failed to load services: ${err.toString()}",
        stackTrace: stackTrace,
      );
      emit(state.copyWith(status: ServiceStatus.error));
      throw err;
    });
  }

  @override
  ServiceState? fromJson(Map<String, dynamic> json) {
    return ServiceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ServiceState state) {
    return state.toJson();
  }
}
