import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Game/presentation/game.dart';
import 'package:flutterplayground/features/Leaderboard/presentation/leader_board.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentTab = 0;

  void handleTabSelection(int tab) => setState(() {
        _currentTab = tab;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('this a test')),
      body: IndexedStack(
        index: _currentTab,
        children: const <Widget>[
          Game(),
          LeaderBoard(),
          Text("data"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.abc),
            label: "Games",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "LeaderBoards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Settings",
          ),
        ],
        onTap: handleTabSelection,
      ),
    );
  }
}
