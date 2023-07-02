import 'package:flutter/material.dart';

class TetrisScreen extends StatefulWidget {
  const TetrisScreen({super.key, required this.title});

  final String title;

  @override
  State<TetrisScreen> createState() => _TetrisScreenState();
}

class _TetrisScreenState extends State<TetrisScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
            child: Column(
          children: [
            Text(
              'tetris game',
              style: TextStyle(fontSize: 30),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
