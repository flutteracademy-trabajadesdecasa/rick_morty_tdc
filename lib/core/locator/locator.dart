import 'package:get_it/get_it.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_cubit.dart';
import 'package:rick_morty_tdc/modules/characters/app/structure/cubit/character_cubit.dart';

GetIt locator = GetIt.instance;

void setupLocator() async {
  await registerCubits();
}

registerCubits() async {
  if (!locator.isRegistered<CharacterCubit>()) {
    locator.registerLazySingleton(() => CharacterCubit());
  }
  if (!locator.isRegistered<StartAppCubit>()) {
    locator.registerLazySingleton(() => StartAppCubit());
  }
}
