import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/constants.dart';

import '../../data/models/user_model.dart';

import '../../../subscription/presentation/viewmodels/subscription_viewmodel.dart';

import '../../../../core/providers.dart';

part 'auth_viewmodel.freezed.dart';
part 'auth_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;
  const factory AuthState.authLoading() = AuthLoading;
  const factory AuthState.authenticated(UserModel user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.passwordResetEmailSent(String message) =
      PasswordResetEmailSent;
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

  bool isAuthenticated() {
    if (state case Authenticated()) {
      return true;
    } else {
      return false;
    }
  }

  UserModel? getUser() {
    if (state case Authenticated(:final user)) {
      return user;
    } else {
      return null;
    }
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
      final router = ref.read(goRouterProvider);
      final subscriptionState = ref.read(subscriptionViewModelProvider);

      if (subscriptionState case SubscriptionInit()) {
        router.push('/subscription-perks');
      } else {
        router.push('/pages-wrapper');
      }
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
      final router = ref.read(goRouterProvider);
      final subscriptionState = ref.read(subscriptionViewModelProvider);

      if (subscriptionState case SubscriptionInit()) {
        router.push('/subscription-perks');
      } else {
        router.push('/pages-wrapper');
      }
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
      final router = ref.read(goRouterProvider);
      router.push('/pages-wrapper');
    }
  }

  // Gère la réinitialisation du mot de passe
  Future<void> sendPasswordResetEmail(String email) async {
    state = const AuthState.authLoading();
    final result = await ref
        .read(authRepositoryProvider)
        .sendPasswordResetEmail(email);
    state = result.fold(
      (_) => AuthState.passwordResetEmailSent(AuthConstants.passwordResetSent),
      (error) => AuthState.authError(error),
    );
  }
}
