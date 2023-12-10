import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiaryAppTheme{
  //Texto en tema claro
  static TextTheme lightTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),
    displayLarge: GoogleFonts.openSans(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black
    ),

    displayMedium: GoogleFonts.openSans(
        fontSize: 21.0,
        fontWeight: FontWeight.w700,
        color: Colors.black
    ),

    displaySmall: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: Colors.grey
    ),

    labelSmall: GoogleFonts.openSans(
        fontSize: 10.0,
        color: Colors.black
    ),

    titleLarge: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),
  );

  // Texto en tema oscuro
  static TextTheme darkTextTheme = TextTheme(
    bodyLarge: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),
    displayLarge: GoogleFonts.openSans(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    ),

    displayMedium: GoogleFonts.openSans(
        fontSize: 21.0,
        fontWeight: FontWeight.w700,
        color: Colors.white
    ),

    displaySmall: GoogleFonts.openSans(
        fontSize: 14.0,
        fontWeight: FontWeight.w600,
        color: Colors.white
    ),

    labelSmall: GoogleFonts.openSans(
        fontSize: 10.0,
        fontWeight: FontWeight.w600,
        color: Colors.black
    ),

    titleLarge: GoogleFonts.openSans(
        fontSize: 20.0,
        fontWeight: FontWeight.w600,
        color: Colors.white
    ),
  );

  static ThemeData lightTheme(){
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.black)
      ),

      appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green
      ),

      textTheme: lightTextTheme,
    );
  }

  static ThemeData darkTheme(){
    return ThemeData(
      brightness: Brightness.dark,
      checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) => Colors.white)
      ),

      appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black
      ),

      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),

      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.green
      ),

      textTheme: darkTextTheme,
    );
  }

}