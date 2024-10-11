import 'package:fleet_consumer/backend/models/client.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

import 'client_state.dart';

class ClientCubit extends HydratedCubit<ClientState> {
  ClientCubit() : super(ClientState());

  /// Sauvegarde le sessionToken(X-CLIENT-SESSION) dans les SharedPreferences avec la clé sessionKey
  Future<void> saveSession(String sessionToken, String sessionKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(sessionKey, sessionToken);
    emit(state.copyWith(sessionToken: sessionToken));
  }

  Future<String?> getSavedSessionToken(String sessionKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(sessionKey);
  }

  /// Collecte les informations de l'appareil avec le package device_info_plus
  Future<Client> collectClientData() async {
    final deviceInfo = DeviceInfoPlugin();
    Client client;

    try {
      if (defaultTargetPlatform == TargetPlatform.android) {
        final androidInfo = await deviceInfo.androidInfo;
        client = Client(
            deviceId: androidInfo.id,
            deviceType: 'Android',
            deviceName: androidInfo.model,
            osVersion: androidInfo.version.release);
      } else if (defaultTargetPlatform == TargetPlatform.iOS) {
        final iosInfo = await deviceInfo.iosInfo;

        client = Client(
            deviceId: iosInfo.identifierForVendor ?? "",
            deviceType: 'iOS',
            deviceName: iosInfo.model,
            osVersion: iosInfo.systemName);
      } else {
        client = const Client();
      }
    } catch (e) {
      throw Exception('Error retrieving device info: $e');
    }

    return client;
  }

  @override
  ClientState? fromJson(Map<String, dynamic> json) {
    return ClientState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ClientState state) {
    return state.toJson();
  }
}
