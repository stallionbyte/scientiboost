import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo4Enonce extends ConsumerWidget {
  const PcNucChap12Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Vous concevez un détecteur de fumée utilisant l'américium-241 qui émet une particule alpha par désintégration. L'activité initiale de la source est de 37 kBq \n \n",
        ),

        sbTxt(
          txt:
              "1) Après combien d'années l'activité sera-t-elle réduite à 30 kBq, nécessitant le remplacement du détecteur ? \n \n",
        ),

        sbTxt(
          txt:
              "2) Si chaque particule alpha ionise en moyenne 150 000 molécules d'air, combien d'ions sont créées par seconde initialement ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
