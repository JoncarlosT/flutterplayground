import 'package:flutter/material.dart';
import 'package:flutterplayground/features/dashboard/presentation/screen/dashboard.dart';
import 'package:flutterplayground/features/login/presetation/login_screen.dart';
import 'package:go_router/go_router.dart';

/// List of routes used with apps navigation [routes].
///
class Routes {
  static const root = '/';
  static const game = '/game';
}

/// The apps navigation.
final GoRouter routes = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    _root,
    StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return const Dashboard();
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(routes: [_game])
        ])
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
    return const Scaffold();
  },
);
