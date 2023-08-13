import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Game/presentation/game.dart';
import 'package:flutterplayground/features/dashboard/presentation/bloc/dashboard_controller.dart';
import 'package:provider/provider.dart';

import '../../../leaderboard/presentation/leader_board.dart';

class Dashboard extends StatefulWidget {
  /// [Dashboard] switches states between bottom navigation bar.
  /// Screens that are in bottom navigation bar are [Game], [LeaderBoard]
  ///
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => DashboardController(),
      child: Consumer<DashboardController>(
        builder: (context, value, child) {
          var tabIndex = value.tabIndex;

          return Scaffold(
            body: IndexedStack(
              index: tabIndex,
              children: const <Widget>[
                Game(),
                LeaderBoard(),
                Center(child: Text("data")),
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
              onTap: (idx) => value.tabIndex = idx,
            ),
          );
        },
      ),
    );
  }
}
