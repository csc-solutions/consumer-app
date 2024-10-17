import 'package:fleet_consumer/backend/models/client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClientService {
  final SharedPreferences prefs;
  ClientService(this.prefs);

  static String sessionKey = "X-CLIENT-SESSION";

  /// Write the [sessionToken] (X-CLIENT-SESSION) in sharedPreferences using [sessionKey] as key
  void saveSession(String sessionToken) async {
    prefs.setString(sessionKey, sessionToken);
  }

  bool get isLoggedIn => getSavedSessionToken() != null;

  /// Read the [sessionToken] (X-CLIENT-SESSION) in sharedPreferences using [sessionKey] as key
  String? getSavedSessionToken() {
    return prefs.getString(sessionKey);
  }

  void invalidateSession() {
    prefs.remove(sessionKey);
  }

  /// Collect device informations with the package device_info_plus
  Future<Client> collectClientData() async {
    final deviceInfo = DeviceInfoPlugin();

    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        final androidInfo = await deviceInfo.androidInfo;
        return Client(
            deviceId: androidInfo.id,
            deviceType: 'Android',
            deviceName: androidInfo.model,
            osVersion: androidInfo.version.release);
      case TargetPlatform.iOS:
        final iosInfo = await deviceInfo.iosInfo;
        return Client(
            deviceId: iosInfo.identifierForVendor ?? "",
            deviceType: 'iOS',
            deviceName: iosInfo.model,
            osVersion: iosInfo.systemName);
      default:
        return const Client();
    }
  }
}
