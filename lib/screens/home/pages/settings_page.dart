import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/settings/settings_cubit.dart';
import 'package:fleet_consumer/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late String privateKey;
  late String publicKey;
  @override
  void initState() {
    super.initState();
    privateKey = context.read<SettingsCubit>().state.privateKey;
    publicKey = context.read<SettingsCubit>().state.publicKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Paramètre"),
      ),
      body: ListView(padding: const EdgeInsets.all(16), children: [
        ListTile(
          title: const Text("Mes paiements"),
          leading: const Icon(Icons.list),
          onTap: () {
            context.pushRoute(const MyPaymentRoute());
          },
        ),
        ListTile(
          title: const Text("Contacter le support"),
          leading: const Icon(Icons.support_agent),
          onTap: () {
            Uri uri = Uri(
              scheme: "https",
              host: "wa.me",
              path: Config.supportNumber(),
            );
            launchUrl(uri);
          },
        ),
      ]),
    );
  }
}
