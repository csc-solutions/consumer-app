import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/screens/home/pages/home_page.dart';
import 'package:fleet_consumer/screens/home/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page == 0 ? const HomePage() : const SettingsPage(),
    );
  }
}
