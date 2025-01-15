import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:mining_monitoring/pages/login/login.dart';
import 'package:mining_monitoring/pages/regdevice/register_device.dart';
import 'package:mining_monitoring/widgets/app_bar_widget.dart';
import 'package:tailwind_colors/tailwind_colors.dart';

import '../pages/home/home.dart';
import '../router/fade_extension.dart';
import '../data/store/user_store.dart';
import '../di/component/service_locator.dart';

GetUserStoreHelper getStoreHelper = getIt<GetUserStoreHelper>();

enum SGRoute {
  home,
  login,
  register_device,
  chat;

  String get route => '/${toString().replaceAll('SGRoute.', '')}';
  String get name => toString().replaceAll('SGRoute.', '');
}

final GlobalKey<NavigatorState> _rootNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'homeNav');
final GlobalKey<NavigatorState> _loginNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'loginNav');
final GlobalKey<NavigatorState> _registerNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'registerNav');

@Singleton()
class SGGoRouter {
  final GoRouter goRoute = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: SGRoute.register_device.route,
    routes:<RouteBase>[ StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return Scaffold(
            resizeToAvoidBottomInset: true,
            appBar: AppBar(
              backgroundColor:TWColors.gray.shade900,
              title: AppBarWidget(),
            ),
            body: Container(
              color: TW3Colors.gray.shade800,
              child: navigationShell,
            ),
          );
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _homeNavigatorKey,
            routes: <RouteBase>[
              GoRoute(
                name: "home",
                path: SGRoute.home.route,
                builder: (BuildContext context, GoRouterState state) =>
                const HomeScreen(),
              ).fade()
            ]
          ),
          StatefulShellBranch(
            navigatorKey: _loginNavigatorKey,
            routes: <RouteBase> [
              GoRoute(
                path: SGRoute.login.route,
                builder: (BuildContext context, GoRouterState state) =>
                const LoginScreen(),
              ).fade()
            ]
          ),
          StatefulShellBranch(
              navigatorKey: _registerNavigatorKey,
              routes: <RouteBase> [
                GoRoute(
                  path: SGRoute.register_device.route,
                  builder: (BuildContext context, GoRouterState state) =>
                  const RegisterDeviceScreen(),
                ).fade()
              ]
          )
        ])],
    redirect: _authGuard,
  );
  GoRouter get getGoRouter => goRoute;
}


final String? Function(BuildContext context, GoRouterState state) _authGuard =
    (BuildContext context, GoRouterState state) {

  if (!(getStoreHelper.getNik() != null) && state.fullPath != SGRoute.register_device.route) {
    return SGRoute.login.route;
  }
  return null;
};
