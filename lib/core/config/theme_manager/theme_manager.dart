import 'package:flutter/material.dart';

abstract class ThemeManager {
  ThemeData get darkTheme;
  ThemeData get lightTheme;
  ThemeData get customTheme;

  List<ThemeData> get themes => [darkTheme, lightTheme, customTheme];
}
