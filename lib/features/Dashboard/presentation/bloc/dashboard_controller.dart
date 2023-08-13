import 'package:flutter/material.dart';

enum DashboardTabs { gameScreen, leaderboardScreen, settingScreen }

/// [DashboardController] handles the state of the current tab selected in the navigation bar on [Dashboard].
///
class DashboardController extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  set tabIndex(int tab) {
    _tabIndex = tab;
    notifyListeners();
  }
}
