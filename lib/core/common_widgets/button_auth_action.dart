import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/auth/presentation/viewmodels/auth_viewmodel.dart';
import 'package:scientiboost/features/auth/presentation/viewmodels/password_reset_viewmodel.dart';

class ButtonAuthAction extends ConsumerWidget {
  const ButtonAuthAction({
    super.key,
    required this.authState,
    required this.formKey,
    required this.controllersValues,
    required this.action,
    required this.buttonText,
  });

  final AuthState authState;
  final GlobalKey<FormState> formKey;
  final Map<String, String> controllersValues;
  final String action;
  final String buttonText;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed:
          authState is Authenticated
              ? null // Désactive le bouton si l'utilisateur est déjà authentifié
              : () {
                if (formKey.currentState?.validate() ?? false) {
                  // Logique pour l'action de connexion
                  if (action == "signin") {
                    // On vérifie que les contrôleurs nécessaires sont bien présents
                    if (controllersValues.containsKey("email") &&
                        controllersValues.containsKey("password")) {
                      // 2. CORRECTION : On utilise '!' pour affirmer que la valeur n'est pas nulle.
                      // C'est sans danger car on vient de vérifier avec containsKey.
                      var email = controllersValues['email']!;
                      var password = controllersValues['password']!;

                      ref
                          .read(authViewModelProvider.notifier)
                          .signIn(email, password);
                    }
                  } else if (action == "signup") {
                    // On vérifie que les contrôleurs nécessaires sont bien présents
                    if (controllersValues.containsKey("email") &&
                        controllersValues.containsKey("password")) {
                      // 2. CORRECTION : On utilise '!' pour affirmer que la valeur n'est pas nulle.
                      // C'est sans danger car on vient de vérifier avec containsKey.
                      final email = controllersValues['email']!;
                      final password = controllersValues['password']!;

                      ref
                          .read(authViewModelProvider.notifier)
                          .signUp(email, password);
                    }
                  } else if (action == "password-reset") {
                    // On vérifie que les contrôleurs nécessaires sont bien présents

                    if (controllersValues.containsKey("email")) {
                      // 2. CORRECTION : On utilise '!' pour affirmer que la valeur n'est pas nulle.
                      // C'est sans danger car on vient de vérifier avec containsKey.
                      final email = controllersValues['email']!;

                      ref
                          .read(passwordResetViewmodelProvider.notifier)
                          .sendPasswordResetEmail(email);
                    }
                  }
                  // Vous pouvez ajouter d'autres actions ici
                  // else if (action == "signup") { ... }
                }
              },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
      ),
      // On utilise le paramètre pour le texte du bouton
      child: Text(
        buttonText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
