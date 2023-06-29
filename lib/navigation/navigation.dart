import 'package:flutter/material.dart';
import 'package:flutterplayground/screens/game_index_screen.dart';
import 'package:flutterplayground/screens/leaderboard_screen.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.amber, title: const Text('appbar')),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentTab = index;
          });
        },
        selectedIndex: currentTab,
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.gamepad), label: "Game"),
          NavigationDestination(
              icon: Icon(Icons.leaderboard), label: "LeaderBoard")
        ],
      ),
      body: const <Widget>[GameIndex(), LeaderBoardScreen()][currentTab],
    );
  }
}
