import 'package:flutter/material.dart';
import 'package:flutterplayground/config/theme/app_theme.dart';

import 'features/dashboard/presentation/screen/dashboard.dart';

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
    return MaterialApp(
      title: "Flutter Demo",
      theme: appTheme,
      home: const Dashboard(),
    );
  }
}
