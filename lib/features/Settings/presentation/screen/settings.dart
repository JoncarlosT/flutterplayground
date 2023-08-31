import 'package:flutter/material.dart';
import 'package:flutterplayground/core/app_navigation/routes.dart';
import 'package:go_router/go_router.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('settings'),
          ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go(Routes.root);
            },
            child: const Text('logout'),
          )
        ],
      ),
    );
  }
}
