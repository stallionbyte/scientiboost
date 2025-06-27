import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/core/providers.dart';

part 'password_reset_viewmodel.freezed.dart';
part 'password_reset_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class PasswordResetState with _$PasswordResetState {
  const factory PasswordResetState.passwordResetInitial() =
      PasswordResetInitial;
  const factory PasswordResetState.passwordResetLoading() =
      PasswordResetLoading;
  const factory PasswordResetState.passwordResetEmailSent() =
      PasswordResetEmailSent;
  const factory PasswordResetState.passwordResetError(String message) =
      PasswordResetError;
}

// ViewModel pour la logique d'authentification
@riverpod
class PasswordResetViewmodel extends _$PasswordResetViewmodel {
  @override
  PasswordResetState build() {
    return const PasswordResetState.passwordResetInitial();
  }

  // Gère la réinitialisation du mot de passe
  Future<void> sendPasswordResetEmail(String email) async {
    state = const PasswordResetState.passwordResetLoading();
    final result = await ref
        .read(authRepositoryProvider)
        .sendPasswordResetEmail(email);
    state = result.fold(
      (_) => PasswordResetState.passwordResetEmailSent(),
      (error) => PasswordResetState.passwordResetError(error),
    );
  }
}
