import 'package:flutter/material.dart';
import 'package:flutterplayground/features/Settings/presentation/screen/settings.dart';
import 'package:flutterplayground/features/dashboard/presentation/screen/dashboard.dart';
import 'package:flutterplayground/features/leaderboard/presentation/leader_board.dart';
import 'package:flutterplayground/features/login/presetation/login_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/Game/presentation/game.dart';

/// List of routes used with apps navigation [routes].
///
class Routes {
  static const root = '/';
  static const game = '/game';
  static const leaderboard = '/leaderboard';
  static const setting = '/settings';
}

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> gameKey = GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> leaderboardKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> settingKey =
      GlobalKey<NavigatorState>();
}

/// The apps navigation.
final GoRouter routes = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: NavigationService.navigatorKey,
  routes: [
    _root,
    StatefulShellRoute.indexedStack(
      parentNavigatorKey: NavigationService.navigatorKey,
      builder: (context, state, navigationShell) {
        return Dashboard(
          navigationShell: navigationShell,
        );
      },
      branches: <StatefulShellBranch>[
        StatefulShellBranch(
          navigatorKey: NavigationService.gameKey,
          routes: [_game],
        ),
        StatefulShellBranch(
          navigatorKey: NavigationService.leaderboardKey,
          routes: [_leaderboard],
        ),
        StatefulShellBranch(
          navigatorKey: NavigationService.settingKey,
          routes: [_settings],
        )
      ],
    )
  ],
);

final _root = GoRoute(
  path: Routes.root,
  builder: (context, state) {
    return const LoginScreen();
  },
);

final _game = GoRoute(
  path: Routes.game,
  builder: (context, state) {
    return const Game();
  },
);

final _leaderboard = GoRoute(
  path: Routes.leaderboard,
  builder: (context, state) {
    return const LeaderBoard();
  },
);

final _settings = GoRoute(
  path: Routes.setting,
  builder: (context, state) {
    return const Settings();
  },
);
