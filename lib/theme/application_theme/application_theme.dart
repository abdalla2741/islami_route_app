import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme =  ThemeData(
    primaryColor: const Color(0xFFB7935F),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle:true,
          titleTextStyle:GoogleFonts.elMessiri(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
      ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFFB7935F),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 32,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: Colors.black
      ),
      bodyLarge: GoogleFonts.elMessiri(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black
      ),
      bodyMedium: GoogleFonts.elMessiri(
          fontWeight: FontWeight.w500,
          fontSize: 25,
          color: Colors.black
      ),
      bodySmall: GoogleFonts.elMessiri(
          fontWeight: FontWeight.normal,
          fontSize: 20,
          color: Colors.black,
          height: 2,
      )
    )
  );

}