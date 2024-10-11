import 'package:fleet_consumer/backend/blocs/client/client_cubit.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
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
  final clientCubit = ClientCubit();
  ApiService apiService = ApiService(clientCubit);

  String? sessionToken =
      await clientCubit.getSavedSessionToken(Config.getXClientSessionKey());
  final clientData = await clientCubit.collectClientData();

  sessionToken == null
      ? await apiService.createSession(clientData)
      : await apiService.sendCollectedData(clientData);

  runApp(FleetConsumerApp(objectbox));
}
