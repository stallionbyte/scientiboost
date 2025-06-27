import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:scientiboost/core/providers.dart';

part 'email_verification_viewmodel.freezed.dart';
part 'email_verification_viewmodel.g.dart';

// État immuable de l'authentification
@freezed
sealed class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState.emailVerificationInitial() =
      EmailVerificationInitial;
  const factory EmailVerificationState.emailVerificationLoading() =
      EmailVerificationLoading;
  const factory EmailVerificationState.emailVerificationEmailSent() =
      EmailVerificationEmailSent;
  const factory EmailVerificationState.emailVerificationError(String message) =
      EmailVerificationError;
}

// ViewModel pour la logique d'authentification
@riverpod
class EmailVerificationViewmodel extends _$EmailVerificationViewmodel {
  @override
  EmailVerificationState build() {
    return const EmailVerificationState.emailVerificationInitial();
  }

  // Gère la réinitialisation du mot de passe
  Future<void> sendEmailVerification() async {
    state = const EmailVerificationState.emailVerificationLoading();
    final result =
        await ref.read(authRepositoryProvider).sendEmailVerification();
    state = result.fold(
      (_) => EmailVerificationState.emailVerificationEmailSent(),
      (error) => EmailVerificationState.emailVerificationError(error),
    );
  }
}
