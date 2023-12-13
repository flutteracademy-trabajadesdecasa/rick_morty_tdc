import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
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
    ),
  ],
);
