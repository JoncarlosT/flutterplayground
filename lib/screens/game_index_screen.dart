import 'package:flutter/material.dart';
import 'package:flutterplayground/screens/tetris_screen.dart';

class GameIndex extends StatefulWidget {
  const GameIndex({super.key});

  @override
  State<GameIndex> createState() => _GameIndexState();
}

class _GameIndexState extends State<GameIndex> {
  void test() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) {
        return const TetrisScreen(
          title: 'Tetris Screen',
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: test,
            child: const Text(
              'TetrisGame',
              style: TextStyle(fontSize: 30),
            ),
          ),
          TextButton(
            onPressed: test,
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
