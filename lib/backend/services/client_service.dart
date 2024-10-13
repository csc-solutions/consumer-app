import 'package:fleet_consumer/backend/models/client.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/foundation.dart';

class ClientService {
  ClientService();

  /// Write the [sessionToken] (X-CLIENT-SESSION) in sharedPreferences using [sessionKey] as key
  Future<void> saveSession(String sessionToken, String sessionKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(sessionKey, sessionToken);
  }

  /// Read the [sessionToken] (X-CLIENT-SESSION) in sharedPreferences using [sessionKey] as key
  Future<String?> getSavedSessionToken(String sessionKey) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(sessionKey);
  }

  /// Collect device informations with the package device_info_plus
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
}
