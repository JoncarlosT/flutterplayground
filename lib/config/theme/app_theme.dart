import 'package:flutter/material.dart';

enum AppTheme { darkMode, lightMode }

const Color _lightPrimaryColor = Color.fromARGB(255, 0, 21, 212);
const Color _darkPrimaryColor = Colors.cyan;

final ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _lightPrimaryColor,
);

final ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _darkPrimaryColor,
  tabBarTheme: const TabBarTheme(),
);

class AppThemeData {
  static ThemeData darkTheme = _darkTheme;
  static ThemeData lightTheme = _lightTheme;
}
