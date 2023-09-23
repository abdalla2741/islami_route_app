
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_route_app/layout/home_layout/home_layout.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {Navigator.pushReplacementNamed(context, HomeLayout.routeName);});
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );


  }
}
