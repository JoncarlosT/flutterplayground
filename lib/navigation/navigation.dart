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
  String appBarTitle = 'Games';

  void tabChange(int tab) {
    setState(() {
      currentTab = tab;
      if (currentTab == 0) {
        appBarTitle = "Games";
      } else {
        appBarTitle = "LeaderBoard";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(backgroundColor: Colors.green[600], title: Text(appBarTitle)),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) => tabChange(index),
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
