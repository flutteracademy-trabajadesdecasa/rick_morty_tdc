import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_tdc/modules/auth/app/structure/start_app/start_app_state.dart';
import 'package:rick_morty_tdc/modules/auth/data/services/auth_services.dart';

class StartAppCubit extends Cubit<StartAppState> {
  StartAppCubit() : super(const StartAppState());

  Future<void> singIn({
    required String email,
    required String password,
  }) async {
    UserCredential myCredentials = await AuthServices().signInWithEmail(
      email: email,
      password: password,
    );

    if (myCredentials.user?.uid != null) {
      AuthServices().setUserRegister(isRegister: true);
      emit(state.copyWith(isLogged: true));
    }
  }

  Future<void> signUp({
    required String email,
    required String password,
  }) async {
    UserCredential myCredentials = await AuthServices().signUpWithEmail(
      email: email,
      password: password,
    );

    if (myCredentials.user?.uid != null) {
      AuthServices().setUserRegister(isRegister: true);
      emit(state.copyWith(isLogged: true));
    }
  }

  Future<void> signOut() async {
    bool isCorrectDelete = await AuthServices().deleteUserRegister();

    if (isCorrectDelete == true) {
      emit(state.copyWith(isLogged: false));
    }
  }

  Future<void> init() async {
    bool userIsLoged = await AuthServices().getUserRegister();
    emit(state.copyWith(isLogged: userIsLoged));
  }
}
