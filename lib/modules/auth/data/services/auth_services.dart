import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  Future<void> setUserRegister({required bool isRegister}) async {
    return _setLocalUserRegister(isRegister: isRegister);
  }

  Future<bool> getUserRegister() {
    return _getLocalUserRegister();
  }

  Future<bool> deleteUserRegister() {
    return _deleteLocalUserRegister();
  }

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

  Future<bool> _isUserRegisteredByFirebaseAndEmail(String email) async {
    try {
      var signInMethods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);

      return signInMethods.isNotEmpty;
    } on FirebaseAuthException catch (e) {
      return false;
    } catch (e) {
      return false;
    }
  }

  Future<void> _setLocalUserRegister({required bool isRegister}) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      await prefs.setBool("userRegister", isRegister);
    } catch (e) {
      print(e);
    }
  }

  Future<bool> _getLocalUserRegister() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final response = prefs.getBool("userRegister");

      return response ?? false;
    } catch (e) {
      return false;
    }
  }

  Future<bool> _deleteLocalUserRegister() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();

      final response = prefs.remove("userRegister");

      return response;
    } catch (e) {
      return false;
    }
  }
}
