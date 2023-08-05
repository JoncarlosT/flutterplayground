import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Leaderboard/presentation/LeaderBoard.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentTab = 0;

  static const List<Widget> _tabWidgets = <Widget>[
    Text(
      'Index 0: Home',
    ),
    Text(
      'Index 1: Business',
    ),
    Text(
      'Index 2: School',
    ),
  ];

  void handleTabSelection(int tab) => setState(() {
        _currentTab = tab;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('this a test')),
      body: Center(child: _tabWidgets.elementAt(_currentTab)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.abc), label: "Games"),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "LeaderBoards"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Settings"),
        ],
        onTap: handleTabSelection,
      ),
    );
  }
}
