
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islami_route_app/layout/home_layout/home_layout.dart';
import 'package:islami_route_app/provider/app_provider.dart';
import 'package:islami_route_app/theme/application_theme/application_theme.dart';
import 'package:provider/provider.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const String routeName = "splash_screen";

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {Navigator.pushReplacementNamed(context, HomeLayout.routeName);});
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider  = Provider.of<AppProvider>(context);
    return Scaffold(
      body: Image.asset( appProvider.spashImagePath(),
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );


  }
}
