import 'package:flutter/material.dart';

enum AppTheme { darkMode, lightMode }

const Color _primaryColor = Colors.cyan;
const MaterialColor _primarySwatch = Colors.cyan;

final ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _primaryColor,
);

final ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _primaryColor,
);

class AppThemeData {
  static ThemeData darkTheme = _darkTheme;
  static ThemeData lightTheme = _lightTheme;
}
