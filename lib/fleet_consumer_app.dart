import 'package:fleet_consumer/app_router.dart';
import 'package:fleet_consumer/backend/blocs/service/service_cubit.dart';
import 'package:fleet_consumer/backend/blocs/settings/settings_cubit.dart';
import 'package:fleet_consumer/backend/services/api_service.dart';
import 'package:fleet_consumer/backend/services/client_service.dart';
import 'package:fleet_consumer/store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:objectbox/objectbox.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FleetConsumerApp extends StatelessWidget {
  static const primaryColor = Color.fromRGBO(28, 60, 245, 1);
  FleetConsumerApp(this.objectBox, {super.key});
  final _appRouter = AppRouter();
  final ObjectBox objectBox;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ClientService>(create: (context) => ClientService()),
        RepositoryProvider<ApiService>(create: (context) => ApiService(context.read<ClientService>())),
        RepositoryProvider<Store>(create: (context) => objectBox.store),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => SettingsCubit(),
          ),
          BlocProvider(
            create: (context) => ServiceCubit(context.read<ApiService>()),
          ),
        ],
        child: MaterialApp.router(
          localizationsDelegates: const [
            AppLocalizations.delegate, // Add this line
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en'), // English
            Locale('fr'), // French
          ],
          debugShowCheckedModeBanner: false,
          routerConfig: _appRouter.config(),
          title: 'Easy Recharge',
          theme: ThemeData(
              appBarTheme: Theme.of(context).appBarTheme.copyWith(
                  color: primaryColor,
                  titleTextStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white),
                  iconTheme: const IconThemeData(color: Colors.white)),
              colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
              useMaterial3: true,
              textTheme: GoogleFonts.plusJakartaSansTextTheme(),
              tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.white.withOpacity(0.7))),
        ),
      ),
    );
  }
}
