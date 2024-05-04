import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/data/auth_repository.dart';
import '../../features/dashboard/presentation/screen/dashboard_screen.dart';
import '../../features/dashboard/presentation/screen/home_screen.dart';
import '../../features/dashboard/presentation/screen/profile_screen.dart';
import '../constants/route_names.dart';

part 'go_router.g.dart';

@riverpod
GoRouter goRouter(GoRouterRef ref) {
  final routes = ref.watch(goRoutesProvider);

  return GoRouter(
    redirect: redirect,
    routes: routes,
  );
}

@riverpod
List<RouteBase> goRoutes(GoRoutesRef ref) {
  return [
    ShellRoute(
      builder: (context, state, child) {
        return DashboardScreen(child: child);
      },
      routes: [
        GoRoute(
          path: RoutePaths.home,
          name: RouteNames.home,
          builder: (context, state) => const HomeScreen(),
        ),
        GoRoute(
          path: RouteNames.profile,
          name: RoutePaths.profile,
          builder: (context, state) => const ProfileScreen(),
        ),
      ],
    ),
  ];
}
