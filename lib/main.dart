import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/backend/services/client_service.dart';
import 'package:fleet_consumer/config.dart';
import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

late ObjectBox objectbox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dir = await getApplicationDocumentsDirectory();
  objectbox = await ObjectBox.create();
  HydratedBloc.storage = await HydratedStorage.build(storageDirectory: dir);
  FlutterNativeSplash.preserve(widgetsBinding: WidgetsBinding.instance);

  // logique pour la collecte des données
  final clientService = ClientService();
  ApiService apiService = ApiService(clientService);

  String? sessionToken =
      await clientService.getSavedSessionToken(Config.getXClientSessionKey());
  final clientData = await clientService.collectClientData();

  sessionToken == null
      ? await apiService.createSession(clientData)
      : await apiService.sendCollectedData(clientData);

  runApp(FleetConsumerApp(objectbox));
}
