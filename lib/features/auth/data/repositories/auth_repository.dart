import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';
import 'dart:async';

import 'package:scientiboost/core/error/firebase/error.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/features/auth/data/models/user_model.dart';

// Interface du repository d'authentification
abstract class AuthRepository {
  Future<ResultDart<UserModel, String>> signIn(String email, String password);
  Future<ResultDart<UserModel, String>> signUp(String email, String password);
  Future<ResultDart<Unit, String>> signOut();
  Future<ResultDart<Unit, String>> sendPasswordResetEmail(String email);
  User? getUser();

  Stream<UserModel?> get authStateChanges;
}

// Implémentation concrète du repository
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  User? getUser() {
    return _firebaseAuth.currentUser;
  }

  @override
  Future<ResultDart<UserModel, String>> signIn(
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password)
          .timeout(Duration(seconds: 10));
      final user = credential.user!;
      return Success(
        UserModel(
          uid: user.uid,
          email: user.email!,
          emailVerified: user.emailVerified,
        ),
      );

      //rendre les messages d'erreur explicite
    } on FirebaseAuthException catch (e) {
      return Failure(errorMessageExplicit(authE: e) as String);
    } on TimeoutException catch (e) {
      return Failure(errorMessageExplicit(timeE: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }

  @override
  Future<ResultDart<UserModel, String>> signUp(
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password)
          .timeout(Duration(seconds: 10));
      final user = credential.user!;

      return Success(
        UserModel(
          uid: user.uid,
          email: user.email!,
          emailVerified: user.emailVerified,
        ),
      );

      //rendre les messages d'erreur explicite
    } on FirebaseAuthException catch (e) {
      return Failure(errorMessageExplicit(authE: e) as String);
    } on TimeoutException catch (e) {
      return Failure(errorMessageExplicit(timeE: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }

  @override
  Future<ResultDart<Unit, String>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const Success(unit);
      //rendre les messages d'erreur explicite
    } on FirebaseAuthException catch (e) {
      return Failure(errorMessageExplicit(authE: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }

  @override
  Future<ResultDart<Unit, String>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth
          .sendPasswordResetEmail(email: email)
          .timeout(Duration(seconds: 10));
      return const Success(unit);
      //rendre les messages d'erreur explicite
    } on FirebaseAuthException catch (e) {
      return Failure(errorMessageExplicit(authE: e) as String);
    } on TimeoutException catch (e) {
      return Failure(errorMessageExplicit(timeE: e) as String);
    } catch (e) {
      return Failure(Constants.genericError);
    }
  }

  @override
  Stream<UserModel?> get authStateChanges =>
      _firebaseAuth.authStateChanges().map(
        (user) =>
            user != null
                ? UserModel(
                  uid: user.uid,
                  email: user.email!,
                  emailVerified: user.emailVerified,
                )
                : null,
      );
}
