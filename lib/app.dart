import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'pages/loading.dart';
import 'router/app_router.dart';

void registerAllServices() {
  GetIt.I.registerSingleton<AppRouter>(AppRouter());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: GetIt.I.allReady(),
      builder:
          (_, ready) =>
              ready.hasData == false
                  ? Material(
                    child: Directionality(
                      textDirection: TextDirection.ltr,
                      child: Localizations(
                        locale: const Locale('en', 'US'),
                        delegates: const <LocalizationsDelegate<dynamic>>[
                          DefaultWidgetsLocalizations.delegate,
                          DefaultMaterialLocalizations.delegate,
                        ],
                        child: LoadingScreen(),
                      ),
                    ),
                  )
                  : MyMaterialApp(),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GetIt.I<AppRouter>().config(),
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
    );
  }
}
