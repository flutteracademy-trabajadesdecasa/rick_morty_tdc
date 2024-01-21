import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_cubit.dart';
import 'package:rick_morty_tdc/modules/auth/app/ui/pages/login_page.dart';
import 'package:rick_morty_tdc/modules/auth/app/ui/pages/register_page.dart';
import 'package:rick_morty_tdc/modules/auth/app/ui/pages/start_app_page.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/pages/character_details_page.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/pages/character_home_page.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
  check,
  login,
  register,
  characterHome,
  charaterDetail,
}

final useBloc = locator<StartAppCubit>();

final List<String> routesWithAuth = [
  '/characterHome',
  '/characterHome/charaterDetail'
];

final List<String> routesWithoutAuth = [
  '/check',
  '/check/login',
  '/check/Register'
];

final goRouterConfiguracion = GoRouter(
  refreshListenable: GoRouterRefreshStream(useBloc.stream),
  redirect: (context, state) {
    if (useBloc.state.isLogged == false &&
        !routesWithoutAuth.contains(state.matchedLocation)) {
      return '/check';
    } else if (useBloc.state.isLogged == true &&
        !routesWithAuth.contains(state.matchedLocation)) {
      return '/characterHome';
    }
    return null;
  },
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: '/',
      name: AppRoutes.startApp.name,
      builder: (context, state) {
        return StartAppPage();
      },
    ),
    GoRoute(
      path: '/check',
      name: AppRoutes.check.name,
      builder: (context, state) {
        return HomePage();
      },
      routes: [
        GoRoute(
          path: 'login',
          name: AppRoutes.login.name,
          builder: (context, state) {
            return LoginPage();
          },
        ),
        GoRoute(
          path: 'Register',
          name: AppRoutes.register.name,
          builder: (context, state) {
            return RegisterPage();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/characterHome',
      name: AppRoutes.characterHome.name,
      builder: (context, state) {
        return CharacterHomePage();
      },
      routes: [
        GoRoute(
          path: 'charaterDetail',
          name: AppRoutes.charaterDetail.name,
          builder: (context, state) {
            return CharacterDetailsPage(
                //Navegar con argumentos
                // characterObject: state.extra as CharacterDetailsPageObject,
                );
          },
        ),
      ],
    ),
  ],
);

class GoRouterRefreshStream extends ChangeNotifier {
  GoRouterRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
