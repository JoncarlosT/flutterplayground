import 'package:flutter/material.dart';

class LeaderBoardScreen extends StatelessWidget {
  const LeaderBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Text(
              'leaderboard',
              style: TextStyle(fontSize: 30),
            )
          ],
        )),
      ),
    );
  }
}
