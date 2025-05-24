import 'package:firebase_auth/firebase_auth.dart';
import 'package:result_dart/result_dart.dart';

import '../../../../core/constants.dart';
import '../models/user_model.dart';

// Interface du repository d'authentification
abstract class AuthRepository {
  Future<ResultDart<UserModel, String>> signIn(String email, String password);
  Future<ResultDart<UserModel, String>> signUp(String email, String password);
  Future<ResultDart<Unit, String>> signOut();
  Future<ResultDart<Unit, String>> sendPasswordResetEmail(String email);
  Stream<UserModel?> get authStateChanges;
}

// Implémentation concrète du repository
class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth _firebaseAuth;

  AuthRepositoryImpl(this._firebaseAuth);

  @override
  Future<ResultDart<UserModel, String>> signIn(
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user!;
      return Success(
        UserModel(
          uid: user.uid,
          email: user.email!,
          displayName: user.displayName,
          emailVerified: user.emailVerified,
        ),
      );
    } on FirebaseAuthException catch (e) {
      return Failure(_mapFirebaseError(e));
    } catch (e) {
      return Failure(AuthConstants.genericError);
    }
  }

  @override
  Future<ResultDart<UserModel, String>> signUp(
    String email,
    String password,
  ) async {
    try {
      final credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final user = credential.user!;
      return Success(
        UserModel(
          uid: user.uid,
          email: user.email!,
          displayName: user.displayName,
          emailVerified: user.emailVerified,
        ),
      );
    } on FirebaseAuthException catch (e) {
      return Failure(_mapFirebaseError(e));
    } catch (e) {
      return Failure(AuthConstants.genericError);
    }
  }

  @override
  Future<ResultDart<Unit, String>> signOut() async {
    try {
      await _firebaseAuth.signOut();
      return const Success(unit);
    } catch (e) {
      return Failure(AuthConstants.genericError);
    }
  }

  @override
  Future<ResultDart<Unit, String>> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      return const Success(unit);
    } on FirebaseAuthException catch (e) {
      return Failure(_mapFirebaseError(e));
    } catch (e) {
      return Failure(AuthConstants.genericError);
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
                  displayName: user.displayName,
                  emailVerified: user.emailVerified,
                )
                : null,
      );

  // Mappe les erreurs Firebase en messages conviviaux
  String _mapFirebaseError(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return AuthConstants.invalidEmail;
      case 'user-not-found':
        return AuthConstants.userNotFound;
      case 'wrong-password':
        return AuthConstants.wrongPassword;
      case 'email-already-in-use':
        return AuthConstants.emailAlreadyInUse;
      case 'weak-password':
        return AuthConstants.weakPassword;
      default:
        return AuthConstants.genericError;
    }
  }
}
