import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'settings_cubit.freezed.dart';
part 'settings_cubit.g.dart';

part 'settings_state.dart';

class SettingsCubit extends HydratedCubit<SettingsState> {
  SettingsCubit() : super(SettingsState());

  @override
  SettingsState? fromJson(Map<String, dynamic> json) {
    return SettingsState.fromJson(json);
  }

  updateSettings(SettingsState state) {
    emit(state);
  }

  @override
  Map<String, dynamic>? toJson(SettingsState state) {
    return state.toJson();
  }
}
