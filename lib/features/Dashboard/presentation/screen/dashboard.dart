import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Game/presentation/game.dart';
import 'package:flutterplayground/features/Settings/presentation/screen/settings.dart';
import 'package:flutterplayground/features/dashboard/presentation/bloc/dashboard_controller.dart';
import 'package:flutterplayground/features/dashboard/presentation/widget/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

import '../../../leaderboard/presentation/leader_board.dart';

class Dashboard extends StatelessWidget {
  /// [Dashboard] switches states between bottom navigation bar.
  /// Screens that are in bottom navigation bar are [Game], [LeaderBoard]
  ///
  const Dashboard({super.key});

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
                Settings(),
              ],
            ),
            bottomNavigationBar: CustomNavigationBar(
              numberOfTabs: value.dashBoardTabLength,
              navigationBarItems: const <Tab>[
                Tab(
                  icon: Icon(Icons.abc),
                  text: "Games",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "LeaderBoards",
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: "Settings",
                ),
              ],
              onTabSelect: (idx) => value.tabIndex = idx,
              currentTab: tabIndex,
            ),
          );
        },
      ),
    );
  }
}
