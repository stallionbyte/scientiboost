//constants.dart

// Centralisation des constantes pour une meilleure maintenabilité
class Constants {
  static const String genericError =
      'Une erreur est survenue. Veuillez réessayer.';
}

class InternetConstants {
  static const String verificationError =
      'Vérification de la connexion internet impossible';
  static const String verificationTimeOutError =
      'Problèmes de connexion internet (lente ou inexistante)';

  static const String connexionError = 'Connexion à internet impossible';
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
  static String alreadySubscribed(DateTime date) {
    return 'Abonnement PC valide en cours. Expire le : ${date.toString()}. Réabonnement PC possible uniquement après cette date.';
  }

  static const String subscriptionInfosInitialMessage =
      "Veuillez vérifier votre connexion internet avant de commencer.";

  static const String subscriptionInfosUnsubscribedMessage =
      "Vous n'avez pas d'abonnement valide actuellement";

  static const subscriptionInfosResubscriptionCondition =
      'Vous devez attendre la fin de cet abonnement avant de vous réabonner';

  static const subscriptionInfosUnauthentificated = "Vous n'ête pas connecté";

  static const subscriptionsForbiden =
      "Impossible de s'abonner dans une matière avant la date d'expiration";
}

class VideoConstants {
  static const String pathElementChimique =
      '/video?matiere=pc&nameOnDataBase=element_chimique.mp4&title=élément chimique';
}

class RoutesNamesConstants {
  static const String pcNucChap11ExosRoutesExo1 =
      '/matiere(PC)/nuc/chap(11)/exo(1)';
  static const String pcNucChap11ExosRoutesExo2 =
      '/matiere(PC)/nuc/chap(11)/exo(2)';
  static const String pcNucChap11ExosRoutesExo3 =
      '/matiere(PC)/nuc/chap(11)/exo(3)';
  static const String pcNucChap11ExosRoutesExo4 =
      '/matiere(PC)/nuc/chap(11)/exo(4)';
  static const String pcNucChap11ExosRoutesExo5 =
      '/matiere(PC)/nuc/chap(11)/exo(5)';
  static const String pcBacD2025 =
      '/pays(BF)/matiere(PC)/examen(BAC-D)/annee(2025)';
  static const String pcBacD2024 =
      '/pays(BF)/matiere(PC)/examen(BAC-D)/annee(2024)';
  static const String pcBacD2023 =
      '/pays(BF)/matiere(PC)/examen(BAC-D)/annee(2023)';
  static const String pcBacD2022 =
      '/pays(BF)/matiere(PC)/examen(BAC-D)/annee(2022)';
  static const String pcBacD2021 =
      '/pays(BF)/matiere(PC)/examen(BAC-D)/annee(2021)';
}

class StorageKeysConstants {
  static const String favoritesExos = 'favorites_exos_routes';
  static const String favoritesExams = 'favorites_exams_routes';
}

class ExoConstants {
  static const double fontSize = 16.0;
  static const double displayFontSize = 25.0;
  static const double displayFontSizeMultiLines = 80.0;
  static const double richTextFontSize = 18.0;
}
