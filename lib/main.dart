import 'package:flutter/material.dart';
import 'package:islami_route_app/modules/quran/quran_details.dart';
import 'package:islami_route_app/splash_screen/splash_screen.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'layout/home_layout/home_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ApplicationTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen(),
        HomeLayout.routeName : (context) => HomeLayout(),
        QuranDetails.routeName : (context) => QuranDetails(),
      },
    );
  }
}


