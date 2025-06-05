import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/constants.dart';
import '../../../../core/providers.dart';
import '../../data/models/user_model.dart';
import '../../data/repositories/auth_repository.dart';

part 'auth_viewmodel.freezed.dart';
part 'auth_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated(UserModel user) = Authenticated;
  const factory AuthState.unauthenticated() = Unauthenticated;
  const factory AuthState.passwordResetEmailSent(String message) =
      PasswordResetEmailSent;
  const factory AuthState.error(String message) = Error;
}

// ViewModel pour la logique d'authentification
@riverpod
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    // Écoute les changements d'état d'authentification
    _authRepository.authStateChanges.listen((user) {
      state =
          user != null
              ? AuthState.authenticated(user)
              : const AuthState.unauthenticated();
    });
    return const AuthState.initial();
  }

  // Gère la connexion
  Future<void> signIn(String email, String password) async {
    state = const AuthState.loading();

    final result = await _authRepository.signIn(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.error(error),
    );

    if (result.isSuccess()) {
      final router = ref.watch(goRouterProvider);
      router.push('/home');
    }
  }

  // Gère l'inscription
  Future<void> signUp(String email, String password) async {
    state = const AuthState.loading();
    final result = await _authRepository.signUp(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.error(error),
    );

    if (result.isSuccess()) {
      final router = ref.watch(goRouterProvider);
      router.push('/home');
    }
  }

  // Gère la déconnexion
  Future<void> signOut() async {
    state = const AuthState.loading();
    final result = await _authRepository.signOut();
    state = result.fold(
      (_) => const AuthState.unauthenticated(),
      (error) => AuthState.error(error),
    );
    if (result.isSuccess()) {
      final router = ref.watch(goRouterProvider);
      router.push('/home');
    }
  }

  // Gère la réinitialisation du mot de passe
  Future<void> sendPasswordResetEmail(String email) async {
    state = const AuthState.loading();
    final result = await _authRepository.sendPasswordResetEmail(email);
    state = result.fold(
      (_) => AuthState.passwordResetEmailSent(AuthConstants.passwordResetSent),
      (error) => AuthState.error(error),
    );
  }
}
