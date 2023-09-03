import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Game/presentation/game.dart';
import 'package:flutterplayground/features/dashboard/presentation/widget/custom_navigation_bar.dart';
import 'package:go_router/go_router.dart';

import '../../../leaderboard/presentation/leader_board.dart';

enum DashboardTabs { gameScreen, leaderboardScreen, settingScreen }

class Dashboard extends StatelessWidget {
  /// [Dashboard] switches states between bottom navigation bar.
  /// Screens that are in bottom navigation bar are [Game], [LeaderBoard]
  ///
  const Dashboard({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: CustomNavigationBar(
        numberOfTabs: DashboardTabs.values.length,
        navigationBarItems: const <Tab>[
          Tab(
            icon: Icon(Icons.games),
            text: "Games",
          ),
          Tab(
            icon: Icon(Icons.home),
            text: "LeaderBoards",
          ),
          Tab(
            icon: Icon(Icons.settings),
            text: "Settings",
          ),
        ],
        onTabSelect: (idx) {
          navigationShell.goBranch(idx);
        },
        currentTab: navigationShell.currentIndex,
      ),
    );
  }
}
