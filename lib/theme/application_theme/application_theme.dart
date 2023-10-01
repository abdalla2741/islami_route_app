import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static ThemeData lightTheme =  ThemeData(
    colorScheme: ColorScheme.fromSeed(
        seedColor: Color(0xFFB7935F),
            primary: Color(0xFFB7935F),
        onSecondary: Colors.white,
      secondary: Colors.white,
      onPrimary: Colors.black
    ),
    primaryColor: const Color(0xFFB7935F),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFFB7935F).withOpacity(0.7),
    ),
      canvasColor: Colors.white,
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
    ),
      dividerColor: Color(0xFFB7935F),
  );


static bool isDark = true;

  
  static ThemeData darkTheme =  ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xFFFACC1D),
          primary: Color(0xFFB7935F),
          onSecondary:  Color(0xFF141A2E),
          secondary: Colors.white,
          onPrimary: Color(0xFFFACC1D)
      ),
    primaryColor: const Color(0xFF141A2E),
    canvasColor: Color(0xFFFACC1D),

    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
            color: Colors.white
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle:true,
        titleTextStyle:GoogleFonts.elMessiri(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        )
    ),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white
          ),
          bodyLarge: GoogleFonts.elMessiri(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white
          ),
          bodyMedium: GoogleFonts.elMessiri(
              fontWeight: FontWeight.w500,
              fontSize: 25,
              color: Colors.white
          ),
          bodySmall: GoogleFonts.elMessiri(
            fontWeight: FontWeight.normal,
            fontSize: 20,
            color: Color(0xFFFACC1D),
            height: 2,
          )
      ),
    bottomNavigationBarTheme:const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF141A2E),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 32,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Colors.white,
        size: 28,
      ),
      unselectedItemColor: Colors.white,
    ),
    dividerColor: Color(0xFFFACC1D),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Color(0xFF141A2E).withOpacity(0.7),
    )
  );

}