import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/pages/login/login.dart';

import '../pages/home/home.dart';
import '../router/fade_extension.dart';
import '../data/user_store.dart';
import '../di/component/service_locator.dart';

GetStoreHelper getStoreHelper = getIt<GetStoreHelper>();

enum SGRoute {
  home,
  login,
  chat;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    initialLocation: SGRoute.home.route,
    routes: <GoRoute>[
      GoRoute(
        path: SGRoute.home.route,
        builder: (BuildContext context, GoRouterState state) =>
        const HomeScreen(),
      ).fade(),
      GoRoute(
        path: SGRoute.login.route,
        builder: (BuildContext context, GoRouterState state) =>
        const LoginScreen(),
      ).fade(),
    ],
    redirect: _authGuard,
  );
  GoRouter get getGoRouter => goRoute;
}

final String? Function(BuildContext context, GoRouterState state) _authGuard =
    (BuildContext context, GoRouterState state) {
  if (!(getStoreHelper.getNik() != null)) {
    return SGRoute.login.route;
  }
  return null;
};
