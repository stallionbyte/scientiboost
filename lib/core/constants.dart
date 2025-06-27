// Centralisation des constantes pour une meilleure maintenabilité
class Constants {
  static const String genericError =
      'Une erreur est survenue. Veuillez réessayer.';
}

class PasswordResetConstants {
  static const String passwordResetEmailSent =
      'Un email de réinitialisation de mot de passe a été envoyé.';
  static const String passwordResetError =
      "Erreur lors de l'envoi de l'email de réinitialisation.";
}

class AuthConstants {
  static const String invalidEmail = 'Veuillez entrer un email valide.';
  static const String weakPassword =
      'Le mot de passe doit contenir au moins 6 caractères.';
  static const String emailAlreadyInUse = 'Cet email est déjà utilisé.';
  static const String userNotFound = 'Aucun utilisateur trouvé avec cet email.';
  static const String wrongPassword = 'Mot de passe incorrect.';
}

class SubscriptionConstants {
  static const String unselected = 'Veuiller choisir au moins une matière.';
}

class VideoConstants {
  static const String pathElementChimique =
      '/video?matiere=pc&nameOnDataBase=element_chimique.mp4&title=élément chimique';
}

class RoutesNamesConstants {
  static const String pcNucChap11ExosRoutesExo1 =
      '/matiere(Physique-Chimie)/nuc/chap(11)/exo(1)';
  static const String pcNucChap11ExosRoutesExo2 =
      '/matiere(Physique-Chimie)/nuc/chap(11)/exo(2)';
  static const String pcNucChap11ExosRoutesExo3 =
      '/matiere(Physique-Chimie)/nuc/chap(11)/exo(3)';
  static const String pcNucChap11ExosRoutesExo4 =
      '/matiere(Physique-Chimie)/nuc/chap(11)/exo(4)';
  static const String pcNucChap11ExosRoutesExo5 =
      '/matiere(Physique-Chimie)/nuc/chap(11)/exo(5)';
  static const String pcBacD2025 =
      '/matiere(Physique-Chimie)/bac(d)/annee(2025)';
  static const String pcBacD2024 =
      '/matiere(Physique-Chimie)/bac(d)/annee(2024)';
  static const String pcBacD2023 =
      '/matiere(Physique-Chimie)/bac(d)/annee(2023)';
  static const String pcBacD2022 =
      '/matiere(Physique-Chimie)/bac(d)/annee(2022)';
  static const String pcBacD2021 =
      '/matiere(Physique-Chimie)/bac(d)/annee(2021)';
}

class StorageKeysConstants {
  static const String favoritesExos = 'favorites_exos_routes';
  static const String favoritesExams = 'favorites_exams_routes';
}
