import 'package:flutter/material.dart';

class SnakeScreen extends StatefulWidget {
  const SnakeScreen({super.key, required this.title});

  final String title;

  @override
  State<SnakeScreen> createState() => _SnakeScreenState();
}

class _SnakeScreenState extends State<SnakeScreen> {
  String appBarTitle = "Title1";

  void changeTitle() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Center(
            child: Column(
          children: [
            Text(
              'snake game',
              style: TextStyle(fontSize: 30),
            )
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.arrow_back)),
    );
  }
}
