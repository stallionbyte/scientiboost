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
  const factory AuthState.error(String message) = Error;
}

// ViewModel pour la logique d'authentification
@riverpod
class AuthViewModel extends _$AuthViewModel {
  late final AuthRepository _authRepository;

  @override
  AuthState build() {
    _authRepository = ref.watch(authRepositoryProvider);
    // Écoute les changements d'état d'authentification et gère la navigation
    _authRepository.authStateChanges.listen((user) {
      state =
          user != null
              ? AuthState.authenticated(user)
              : const AuthState.unauthenticated();
      final router = ref.read(goRouterProvider);
      if (user != null && !user.emailVerified) {
        router.go('/verify-email');
      } else if (user != null) {
        router.go('/home');
      } else {
        router.go('/login');
      }
    });
    return const AuthState.initial();
  }

  // Valide les entrées avant l'authentification
  String? _validateInput(String email, String password) {
    if (!_isValidEmail(email)) return AuthConstants.invalidEmail;
    if (password.length < 6) return AuthConstants.weakPassword;
    return null;
  }

  bool _isValidEmail(String email) {
    final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    return emailRegex.hasMatch(email);
  }

  // Gère la connexion
  Future<void> signIn(String email, String password) async {
    final validationError = _validateInput(email, password);
    if (validationError != null) {
      state = AuthState.error(validationError);
      return;
    }
    state = const AuthState.loading();
    final result = await _authRepository.signIn(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.error(error),
    );
  }

  // Gère l'inscription
  Future<void> signUp(String email, String password) async {
    final validationError = _validateInput(email, password);
    if (validationError != null) {
      state = AuthState.error(validationError);
      return;
    }
    state = const AuthState.loading();
    final result = await _authRepository.signUp(email, password);
    state = result.fold(
      (user) => AuthState.authenticated(user),
      (error) => AuthState.error(error),
    );
  }

  // Gère la déconnexion
  Future<void> signOut() async {
    state = const AuthState.loading();
    final result = await _authRepository.signOut();
    state = result.fold(
      (_) => const AuthState.unauthenticated(),
      (error) => AuthState.error(error),
    );
  }

  // Gère la réinitialisation du mot de passe
  Future<void> sendPasswordResetEmail(String email) async {
    if (!_isValidEmail(email)) {
      state = AuthState.error(AuthConstants.invalidEmail);
      return;
    }
    state = const AuthState.loading();
    final result = await _authRepository.sendPasswordResetEmail(email);
    state = result.fold(
      (_) => AuthState.error(
        AuthConstants.passwordResetSent,
      ), // Utilisé comme message de succès
      (error) => AuthState.error(error),
    );
  }
}
