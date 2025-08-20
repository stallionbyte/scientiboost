import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMineChap2Exo1Enonce extends ConsumerWidget {
  const PcMineChap2Exo1Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es technicien de laboratoire dans une entreprise de traitement des eaux industrielles. Ton responsable te confie une mission cruciale : préparer une solution acide de pH précis pour neutraliser des effluents basiques avant leur rejet. Tu dois analyser trois solutions successives pour garantir le respect des normes environnementales.\n\nTa démarche rigoureuse conditionnera l'obtention du certificat de conformité environnementale de l'entreprise.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Préparation de la solution S₁\n\n"),
        sbTxt(
          txt:
              "Tu dissous 0,224 L de chlorure d'hydrogène gazeux (mesuré dans les CNTP) dans 2,0 L d'eau distillée pour obtenir une solution S₁.\n\n",
        ),
        sbTxt(
          txt:
              "1) Calculer la concentration molaire de la solution S₁. En déduire le pH de cette solution. Calculer les concentrations de toutes les espèces chimiques présentes dans S₁. \n\n",
        ),

        transition(transition: "ÉTAPE 2 - Préparation de la solution S₂\n\n"),
        sbTxt(
          txt:
              "Tu prélèves 0,2 mL d'une solution So d'acide sulfurique concentré de densité 1,84 et de pourcentage massique 96% que tu dilues dans  l'eau distillée pour obtenir 1,0 L d'une solution S₂.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer la concentration molaire de la solution S₂. En déduire le pH de cette solution. Calculer les concentrations de toutes les espèces chimiques présentes dans S₂. \n\n",
        ),

        transition(transition: "ÉTAPE 3 - Préparation du mélange final S₃\n\n"),
        sbTxt(
          txt:
              "Pour obtenir la solution finale S₃, tu mélanges 600 mL de la solution S₁ avec 200 mL de la solution S₂.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer le pH du mélange S₃. Calculer les concentrations de toutes les espèces chimiques présentes dans S₃.\n\n",
        ),

        Donnees(),
      ],
    );
  }
}
