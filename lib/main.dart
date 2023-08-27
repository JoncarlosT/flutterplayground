import 'package:flutter/material.dart';
import 'package:flutterplayground/config/theme/app_theme.dart';
import 'package:flutterplayground/config/theme/theme_controller.dart';
import 'package:flutterplayground/core/app_navigation/routes.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeController(),
      child: Consumer<ThemeController>(
        builder: (context, value, child) {
          return MaterialApp.router(
            title: "Flutter Demo",
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: value.themeMode,
            routerConfig: routes,
          );
        },
      ),
    );
  }
}
