import 'package:flutter/material.dart';

class DashboardController extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  void setTabIndex(int int) {
    _tabIndex = int;
    notifyListeners();
  }
}
