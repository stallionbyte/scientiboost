import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMineChap2Exo3Enonce extends ConsumerWidget {
  const PcMineChap2Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur chimiste dans une société de recyclage de batteries automobiles. Lors du processus de récupération de l'acide des batteries usagées, tu obtiens une solution d'acide sulfurique de qualité inconnue. Pour optimiser le processus de purification et respecter les normes de sécurité, tu dois analyser précisément cette solution.\n\nTon analyse déterminera la rentabilité du processus de recyclage et la conformité environnementale de l'installation.\n\n",
        ),
        transition(transition: "ANALYSE DE LA SOLUTION RÉCUPÉRÉE\n\n"),
        sbTxt(
          txt:
              "Après dilution contrôlée, tu obtiens 2,5 L d'une solution d'acide sulfurique de pH = 2,5.\n\n",
        ),
        sbTxt(
          txt:
              "1) Calculer les concentrations de toutes les espèces chimiques présentes dans cette solution. En déduire la concentration molaire de la solution d'acide sulfurique.\n\n",
        ),

        transition(transition: "CALCUL DU VOLUME D'ACIDE PUR\n\n"),
        sbTxt(
          txt:
              "2) Calculer le volume d'acide sulfurique pur qui a été dissous pour préparer cette solution.\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
