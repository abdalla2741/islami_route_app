import 'package:flutter/material.dart';

import 'layout/home_layout/home_layout.dart';
import 'modules/splash_screen/splash_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => SplashScreen(),
        HomeLayout.routeName : (context) => HomeLayout(),
      },
    );
  }
}


