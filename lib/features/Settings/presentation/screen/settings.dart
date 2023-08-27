import 'package:flutter/material.dart';
import 'package:flutterplayground/config/theme/theme_controller.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeController>(
      builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('settings'),
            ElevatedButton(
              onPressed: () {
                value.toggleTheme();
              },
              child: const Text('toggle theme'),
            )
          ],
        );
      },
    );
  }
}
