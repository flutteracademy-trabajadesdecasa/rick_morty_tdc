import 'package:flutter/material.dart';
import 'package:rick_morty_tdc/core/locator/locator.dart';
import 'package:rick_morty_tdc/core/router/app_router.dart';
import 'package:rick_morty_tdc/theme/app_theme.dart';

void main() {
  setupLocator();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      /// TEMA
      theme: appTheme,

      /// RUTAS
      routerConfig: goRouterConfiguracion,
    );
  }
}
