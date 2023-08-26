import 'package:flutter/material.dart';

/// The types of screens navigated from [Dashboard].
///
enum DashboardTabs { gameScreen, leaderboardScreen, settingScreen }

/// [DashboardController] handles the state of the current tab selected in the navigation bar on [Dashboard].
///
class DashboardController extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  int get dashBoardTabLength => DashboardTabs.values.length;

  set tabIndex(int tab) {
    _tabIndex = tab;
    notifyListeners();
  }
}
