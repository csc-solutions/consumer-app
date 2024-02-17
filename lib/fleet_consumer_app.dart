import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/backend/blocs/settings/settings_cubit.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:objectbox/objectbox.dart';

class FleetConsumerApp extends StatelessWidget {
  static const primaryColor = Color.fromRGBO(28, 60, 245, 1);
  FleetConsumerApp(this.objectBox, {super.key});
  final _appRouter = AppRouter();
  final ObjectBox objectBox;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ApiService>(create: (context) => ApiService()),
        RepositoryProvider<Store>(create: (context) => objectBox.store),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SettingsCubit(),
          ),
          BlocProvider(
            create: (context) => ServiceCubit(context.read<ApiService>()),
          )
        ],
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          title: 'Easy Recharge',
          theme: ThemeData(
            appBarTheme: Theme.of(context).appBarTheme.copyWith(
                color: primaryColor,
                iconTheme: const IconThemeData(color: Colors.white)),
            colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
            useMaterial3: true,
            textTheme: GoogleFonts.plusJakartaSansTextTheme(),
          ),
        ),
      ),
    );
  }
}
