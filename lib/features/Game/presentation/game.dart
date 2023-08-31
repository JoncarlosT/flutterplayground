import 'package:flutter/material.dart';
import 'package:flutterplayground/core/app_navigation/routes.dart';
import 'package:go_router/go_router.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Game"),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(Routes.game);
              },
              child: const Text('button'),
            )
          ],
        ),
      ),
    );
  }
}
