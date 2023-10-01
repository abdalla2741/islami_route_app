import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/hadeth/hadet_details.dart';
import 'package:islami_route_app/modules/quran/quran_details.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:islami_route_app/splash_screen/splash_screen.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'package:provider/provider.dart';
import 'layout/home_layout/home_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      ChangeNotifierProvider(create: (  context) => AppProvider(),
         child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode:  appProvider.currentTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      locale: Locale(appProvider.currentLocale),
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        HomeLayout.routeName : (context) => HomeLayout(),
        QuranDetails.routeName : (context) => QuranDetails(),
        HadethDetails.routeName : (context) => HadethDetails(),
      },
    );
  }
}


