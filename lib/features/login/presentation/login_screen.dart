import 'package:flutter/material.dart';
import 'package:flutterplayground/core/app_navigation/routes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              GoRouter.of(context).go(Routes.game);
            },
            child: const Text('login')),
      ),
    );
  }
}
