import 'package:go_router/go_router.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/pages/character_details_page.dart';
import 'package:rick_morty_tdc/modules/characters/app/ui/pages/character_home_page.dart';
import 'package:rick_morty_tdc/modules/start/app/ui/pages/home_page.dart';

enum AppRoutes {
  startApp,
  characterHome,
  charaterDetail,
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
        ]),
  ],
);
