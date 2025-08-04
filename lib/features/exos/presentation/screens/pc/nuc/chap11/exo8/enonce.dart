import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo8Enonce extends ConsumerWidget {
  const PcNucChap11Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu fais partie d’une équipe d’ingénieurs travaillant sur la conception d’un nouveau réacteur nucléaire expérimental. Avant de faire ton choix de matériau actif, tu dois comparer la stabilité de deux noyaux candidats afin de déterminer celui qui serait le plus adapté à une utilisation stable et durable. Ces noyaux sont l'uranium-235 et le thorium-232 \n \n",
        ),

        sbTxt(
          txt:
              "1) Calculer l'énergie de liaison par nucléon de ces deux (2) noyaux \n \n",
        ),

        sbTxt(
          txt: "2) Quel est le noyau le plus stable parmi les deux ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
