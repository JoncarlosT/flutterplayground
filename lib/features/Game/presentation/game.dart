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
            const Text("Games"),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(
                  Routes.play,
                  extra: const PlayArguments(gameName: 'game1'),
                );
              },
              child: const Text('game1'),
            ),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).push(
                  Routes.play,
                  extra: const PlayArguments(gameName: 'game2'),
                );
              },
              child: const Text('game2'),
            )
          ],
        ),
      ),
    );
  }
}
