import 'package:flutter/material.dart';
import 'package:flutterplayground/screens/tetris_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      appBar:
          AppBar(backgroundColor: Colors.amber, title: const Text('appbar')),
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
