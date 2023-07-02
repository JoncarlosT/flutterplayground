import 'package:flutter/material.dart';
import 'package:flutterplayground/screens/snake_screen.dart';
import 'package:flutterplayground/screens/tetris_screen.dart';

class GameIndex extends StatefulWidget {
  const GameIndex({super.key});

  @override
  State<GameIndex> createState() => _GameIndexState();
}

class _GameIndexState extends State<GameIndex> {
  void push(String game) {
    if (game == 'tetris') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return const TetrisScreen(
            title: 'Tetris Screen',
          );
        }),
      );
    }

    if (game == 'snake') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) {
          return const SnakeScreen(
            title: 'Snake Screen',
          );
        }),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () => push('tetris'),
            child: const Text(
              'TetrisGame',
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextButton(
            onPressed: () => push('snake'),
            child: const Text(
              'SnakeGame',
              style: TextStyle(fontSize: 30),
            ),
          )
        ],
      )),
    );
  }
}
