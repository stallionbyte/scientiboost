import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:scientiboost/features/auth/data/models/user_model.dart';

import 'package:scientiboost/features/subscription/presentation/viewmodels/subscription_viewmodel.dart';
import 'package:scientiboost/features/pages_wrapper/presentation/viewmodels/current_page_viewmodel.dart';

import 'package:scientiboost/core/providers.dart';

part 'auth_viewmodel.freezed.dart';
part 'auth_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authenticated(UserModel user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.authError(String message) = AuthError;
}

// ViewModel pour la logique d'authentification
@riverpod
class AuthViewModel extends _$AuthViewModel {
  @override
  AuthState build() {
    // Écoute les changements d'état d'authentification

    ref.read(authRepositoryProvider).authStateChanges.listen((user) {
      state =
          user != null
              ? AuthState.authenticated(user)
              : const AuthState.unauthenticated();
    });

    return const AuthState.authInitial();
  }

  User? getUser() {
    return ref.read(authRepositoryProvider).getUser();
  }

  // Gère la connexion
  Future<void> signIn(String email, String password) async {
    state = const AuthState.authLoading();

    final result = await ref
        .read(authRepositoryProvider)
        .signIn(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.authError(error),
    );

    if (result.isSuccess()) {
      ref.read(currentPageViewModelProvider.notifier).goToHome();
    }
  }

  // Gère l'inscription
  Future<void> signUp(String email, String password) async {
    state = const AuthState.authLoading();
    final result = await ref
        .read(authRepositoryProvider)
        .signUp(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.authError(error),
    );

    if (result.isSuccess()) {
      ref.read(currentPageViewModelProvider.notifier).goToHome();
    }
  }

  // Gère la déconnexion
  Future<void> signOut() async {
    state = const AuthState.authLoading();
    final result = await ref.read(authRepositoryProvider).signOut();
    state = result.fold(
      (_) => const AuthState.unauthenticated(),
      (error) => AuthState.authError(error),
    );

    if (result.isSuccess()) {
      ref.read(subscriptionViewModelProvider.notifier).setInitial();

      ref.read(currentPageViewModelProvider.notifier).goToHome();
    }
  }
}
