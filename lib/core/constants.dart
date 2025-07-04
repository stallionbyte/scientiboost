import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

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
      "Veuillez vérifier votre connexion internet avant de commencer";

  static const String subscriptionInfosUnsubscribedMessage =
      "Vous n'avez pas d'abonnement valide actuellement";

  static const subscriptionInfosResubscriptionCondition =
      'Vous devez attendre la fin de cet abonnement avant de vous réabonner';
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
  static const double displayFontSize = 20.0;
  static const double displayFontSizeMultiLines = 80.0;
  static const double richTextFontSize = 18.0;
}

class DonneesPhyNucLatexConstants {
  static Widget u = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"1u = 931,5 \text{MeV}/c^2",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget mp = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m_p = 1,007276u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget mn = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m_n = 1,008665u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );

  static Widget masseC14 = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"m(_{\ 6}^{14}C) = 14,003242u",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize;
              return SvgPicture.string(
                svg,
                height: displayFontSize,
                width: displayFontSize,
                fit: BoxFit.contain,
                alignment: Alignment.center,
              );
            },
          ),
        ),
      ],
    ),
  );
}

class PhyNucLatexContants {
  static const String masseProtonEnUValue = "1,007276";
  static const String masseNeutronEnUValue = "1,008665";
  static WidgetSpan delta = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        -3.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"\Delta",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
          return SvgPicture.string(
            svg,
            height: displayFontSize,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          );
        },
      ),
    ),
  );

  static WidgetSpan mn = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        5.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"m_n",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
          return SvgPicture.string(
            svg,
            height: displayFontSize,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          );
        },
      ),
    ),
  );

  static WidgetSpan mp = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: Transform.translate(
      offset: const Offset(
        0,
        5.0,
      ), // Déplacement vertical (négatif = vers le haut)
      child: TeX2SVG(
        math: r"m_p",
        formulaWidgetBuilder: (context, svg) {
          double displayFontSize = ExoConstants.richTextFontSize;
          return SvgPicture.string(
            svg,
            height: displayFontSize,
            fit: BoxFit.contain,
            alignment: Alignment.center,
          );
        },
      ),
    ),
  );

  static Widget defautDeMasseFormule = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        delta,
        const TextSpan(text: "m( "),
        notationNoyau,
        const TextSpan(text: ") = Z x "),
        mp,
        const TextSpan(text: "+ (A-Z) x "),
        mn,
        const TextSpan(text: "\n \n - m("),
        notationNoyau,
        const TextSpan(text: ")"),
      ],
    ),
  );

  static WidgetSpan mevc2 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\text{MeV}/c^2",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize,
          width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan mevc2Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{\text{MeV}/c^2}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize,
          width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan notationNoyau = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{Z}^{A}X",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone12 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 6}^{12}C",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone12Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 6}^{12}C}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone14 = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"_{\ 6}^{14}C",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );

  static WidgetSpan carbone14Bold = WidgetSpan(
    alignment: PlaceholderAlignment.middle,
    child: TeX2SVG(
      math: r"\mathbf{_{\ 6}^{14}C}",
      formulaWidgetBuilder: (context, svg) {
        double displayFontSize = ExoConstants.displayFontSize;
        return SvgPicture.string(
          svg,
          height: displayFontSize * 1.2,
          //width: displayFontSize,
          fit: BoxFit.contain,
          alignment: Alignment.center,
        );
      },
    ),
  );
}
