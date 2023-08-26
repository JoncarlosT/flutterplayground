import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  /// [CustomNavigationBar] is the custom bottom navigation bar used in [Dashboard].
  ///
  const CustomNavigationBar({
    super.key,
    required this.navigationBarItems,
    required this.onTabSelect,
    required this.currentTab,
    required this.numberOfTabs,
  });

  /// A list of navigation tabs.
  final List<Tab> navigationBarItems;

  /// onTap function to handle switching between tabs.
  final void Function(int) onTabSelect;

  /// The current tab being displayed.
  final int currentTab;

  /// The number of tabs in [CustomNavigationBar] need for [DefaultTabController]
  final int numberOfTabs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
      ),
      child: DefaultTabController(
        initialIndex: currentTab,
        length: numberOfTabs,
        animationDuration: const Duration(),
        child: TabBar(
          indicator: const BoxDecoration(color: Colors.red),
          tabs: navigationBarItems,
          onTap: onTabSelect,
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return BottomNavigationBar(
  //     backgroundColor: Colors.amber,
  //     items: navigationBarItems,
  //     onTap: onTabSelect,
  //     currentIndex: currentTab,
  //   );
  // }
}
