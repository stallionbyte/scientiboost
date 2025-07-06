import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

  Future<void> goToSignIn() async {
    await ref.read(goRouterProvider).push("/signin");
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

      ref.read(currentPageViewModelProvider.notifier).setHome();

      router.push('/pages-wrapper');
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

      ref.read(currentPageViewModelProvider.notifier).setHome();

      router.push('/pages-wrapper');
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

      ref
          .read(subscriptionViewModelProvider.notifier)
          .setState(SubscriptionState.subscriptionInitial());

      ref.read(currentPageViewModelProvider.notifier).setHome();

      router.push('/pages-wrapper');
    }
  }
}
