import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/pages/character_home_page.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
  characterHome,
}

final goRouterConfiguracion = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
        path: '/',
        name: AppRoutes.startApp.name,
        builder: (context, state) {
          return HomePage();
        },
        routes: [
          GoRoute(
            path: 'characterHome',
            name: AppRoutes.characterHome.name,
            builder: (context, state) {
              return CharacterHomePage();
            },
          ),
        ]),
  ],
);
