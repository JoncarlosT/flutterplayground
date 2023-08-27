import 'package:flutter/material.dart';

/// The [ThemeController] provides the toggle between the light and dark theme.
class ThemeController extends ChangeNotifier {
  /// Current theme mode of the app.
  ///
  ThemeMode _themeMode = ThemeMode.dark;

  ThemeMode get themeMode => _themeMode;

  /// Function to switch [themeMode] value from light to dark.
  ///
  void toggleTheme() {
    if (_themeMode == ThemeMode.dark) {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.dark;
    }

    notifyListeners();
  }
}
