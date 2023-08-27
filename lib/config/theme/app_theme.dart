import 'package:flutter/material.dart';

enum AppTheme { darkMode, lightMode }

const Color _primaryColor = Colors.cyan;
const MaterialColor _primarySwatch = Colors.cyan;

final ThemeData _lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: _primaryColor,
  tabBarTheme: const TabBarTheme(labelColor: Colors.black),
);

final ThemeData _darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: _primaryColor,
  tabBarTheme: const TabBarTheme(
      labelColor: Colors.pink, unselectedLabelColor: Colors.orange),
);

final appThemeData = {
  AppTheme.darkMode: _darkTheme,
  AppTheme.lightMode: _lightTheme
};
