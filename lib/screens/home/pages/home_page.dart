import 'package:auto_route/auto_route.dart';
import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/fleet_consumer_app.dart';
import 'package:fleet_consumer/widgets/card.dart';
import 'package:fleet_consumer/widgets/expandable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(80),
            child: Container(
              decoration:
                  const BoxDecoration(color: FleetConsumerApp.primaryColor),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 25),
                child: Image.asset(
                  "assets/icon/icon-white.png",
                  width: 100,
                ),
              ),
            )),
      ),
      floatingActionButton: ExpandableFab(
        distance: 112,
        children: [
          ActionButton(
            onPressed: () {},
            label: const Text("Acheter un forfait internet"),
          ),
          ActionButton(
            onPressed: () {},
            label: const Text("Acheter du crédit"),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: OvalBottomBorderClipper(),
            child: Container(
              color: FleetConsumerApp.primaryColor,
              height: 50,
            ),
          ),
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(24.0).copyWith(bottom: 16),
                child: DataCard(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    leading: Image.asset(
                      "assets/images/mtn.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text('100 mb'),
                    subtitle: const Text('surf 100'),
                    trailing: const Text(
                      '100F',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  onPrimaryOptionPressed: () {},
                  primaryOptionTitle: "See all",
                  secondaryOptionTitle: "Repeat",
                  onSecondaryOptionPressed: () {},
                  title: "Most recent transaction",
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24.0).copyWith(top: 0),
                child: DataCard(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                    leading: Image.asset(
                      "assets/images/mtn.png",
                      width: 50,
                      height: 50,
                    ),
                    title: const Text('100 mb'),
                    subtitle: const Text('surf 100'),
                    trailing: const Text(
                      '100F',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  onPrimaryOptionPressed: () {},
                  primaryOptionTitle: "Buy now",
                  secondaryOptionTitle: "See all",
                  onSecondaryOptionPressed: () {},
                  title: "Promotion of the day",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
