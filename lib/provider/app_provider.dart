import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{

  String currentLocale = "en";

  ThemeMode currentTheme = ThemeMode.light;
changeLanguage(String newLanguage){
  if(currentLocale == newLanguage) return;
    currentLocale = newLanguage;
    notifyListeners();

}
  changeTheme (ThemeMode newTheme) {
    if(currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDark (){
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImagePath(){
    return isDark()? "assets/images/backgroun dark.png" : "assets/images/background.png";
  }

  String spashImagePath() {
    return isDark()
        ? "assets/images/splash _dark.png"
        : "assets/images/splash.png";
  }
}