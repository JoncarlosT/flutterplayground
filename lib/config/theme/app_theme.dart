import 'package:flutter/material.dart';

const Color _primaryColor = Colors.cyan;
const MaterialColor _primarySwatch = Colors.cyan;

final ThemeData appTheme = ThemeData(
  primaryColor: _primaryColor,
  primarySwatch: _primarySwatch,
);

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
