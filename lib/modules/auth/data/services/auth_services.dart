import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    return await _signInWithEmailAndPassworWithFirebase(
      email: email,
      password: password,
    );
  }

  Future<UserCredential> signUpWithEmail({
    required String email,
    required String password,
  }) async {
    return await _signUpWithEmailAndPassworWithFirebase(
      email: email,
      password: password,
    );
  }

  Future<void> signOut() async {}

  Future<UserCredential> _signInWithEmailAndPassworWithFirebase({
    required String email,
    required String password,
  }) async {
    try {
      return await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e;
    } catch (e) {
      throw e;
    }
  }

  Future<UserCredential> _signUpWithEmailAndPassworWithFirebase({
    required String email,
    required String password,
  }) async {
    try {
      return await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw e;
    } catch (e) {
      throw e;
    }
  }
}
