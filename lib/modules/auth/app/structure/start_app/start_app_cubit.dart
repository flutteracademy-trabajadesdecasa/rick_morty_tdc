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
      emit(state.copyWith(isLogged: true));
    }
  }

  void signOut() {
    emit(state.copyWith(isLogged: false));
  }
}
