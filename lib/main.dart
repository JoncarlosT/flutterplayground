import 'package:flutter/material.dart';
import 'package:flutterplayground/core/app_navigation/routes.dart';

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
    return MaterialApp.router(title: "Flutter Demo", routerConfig: routes);
  }
}
