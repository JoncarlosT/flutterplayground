import 'package:flutter/material.dart';

class DashboardController extends ChangeNotifier {
  int _tabIndex = 0;

  int get tabIndex => _tabIndex;

  set tabIndex(int tab) {
    _tabIndex = tab;
    notifyListeners();
  }
}
