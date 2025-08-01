import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo3Enonce extends ConsumerWidget {
  const PcNucChap11Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "En tant que physicien médical, vous devez étudier l'isotope cobalt-60 utilisé en radiothérapie. \n \n",
        ),

        sbTxt(
          txt:
              "1) Donner la composition nucléaire du nucléide cobalt-60. \n \n",
        ),

        sbTxt(txt: "2) Calculer en Kg la masse d'un noyau de cobalt-60 \n \n"),

        sbTxt(
          txt:
              "3) Calculer en Kg le défaut de masse d'un noyau de cobalt-60 \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
