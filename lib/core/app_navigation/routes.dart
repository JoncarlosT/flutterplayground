import 'package:flutterplayground/features/dashboard/presentation/screen/dashboard.dart';
import 'package:go_router/go_router.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) {
        return const Dashboard();
      },
    ),
  ],
);
