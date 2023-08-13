import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  /// [CustomNavigationBar] is the custom bottom navigation bar used in [Dashboard]
  ///
  const CustomNavigationBar({
    super.key,
    required this.navigationBarItems,
    required this.onTabSelect,
    required this.currentTab,
  });

  final List<BottomNavigationBarItem> navigationBarItems;
  final void Function(int) onTabSelect;
  final int currentTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: navigationBarItems,
      onTap: onTabSelect,
      currentIndex: currentTab,
    );
  }
}
