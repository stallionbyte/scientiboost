// Centralisation des constantes pour une meilleure maintenabilité
class AuthConstants {
  static const String invalidEmail = 'Veuillez entrer un email valide.';
  static const String weakPassword =
      'Le mot de passe doit contenir au moins 6 caractères.';
  static const String emailAlreadyInUse = 'Cet email est déjà utilisé.';
  static const String userNotFound = 'Aucun utilisateur trouvé avec cet email.';
  static const String wrongPassword = 'Mot de passe incorrect.';
  static const String genericError =
      'Une erreur est survenue. Veuillez réessayer.';
  static const String passwordResetSent =
      'Un email de réinitialisation a été envoyé.';
  static const String passwordResetError =
      'Erreur lors de l\'envoi de l\'email de réinitialisation.';
}
