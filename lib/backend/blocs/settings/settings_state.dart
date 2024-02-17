
part of 'settings_cubit.dart';


@freezed
class SettingsState with _$SettingsState {
  factory SettingsState({
    @Default("") String privateKey,
    @Default("") String publicKey,
  }) = _SettingsState;
	
  factory SettingsState.fromJson(Map<String, dynamic> json) =>
			_$SettingsStateFromJson(json);
}
