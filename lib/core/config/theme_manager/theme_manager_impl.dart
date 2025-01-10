import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hyper_supabase/core/config/theme_manager/theme_manager.dart';

class ThemeManagerImpl extends ThemeManager {
  List<ThemeData> get themes => [darkTheme, lightTheme, customTheme];
  ThemeData darkTheme = ThemeData.dark().copyWith(
    textTheme: GoogleFonts.latoTextTheme(
      ThemeData.dark().textTheme,
    ),
    primaryColor: Colors.teal,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black,
      titleTextStyle: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.teal,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.lato(),
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: GoogleFonts.latoTextTheme(
      ThemeData.light().textTheme,
    ),
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.blue,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.lato(),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );

  ThemeData customTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: GoogleFonts.latoTextTheme(
      ThemeData.dark().textTheme,
    ),
    primaryColor: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.deepPurple,
      titleTextStyle: GoogleFonts.lato(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurple,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: GoogleFonts.lato(),
        backgroundColor: Colors.deepPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    buttonTheme: ButtonThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
