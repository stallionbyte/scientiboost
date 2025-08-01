import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo4Enonce extends ConsumerWidget {
  const PcNucChap11Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous dirigez une équipe de recherche étudiant la synthèse d'éléments super-lourds et devez analyser la stabilité théorique du noyau hypothétique X de nombre de masse 300 et de numéro atomique 120. \n \n",
        ),

        sbTxt(
          txt:
              "1) Calculez son défaut de masse en supposant une énergie de liaison par nucléon de 7,5 MeV/nucléon. \n \n",
        ),

        sbTxt(txt: "2) Calculez la masse de ce noyau. \n \n"),

        sbTxt(
          txt:
              "3) Calculez l'énergie nécessaire pour séparer complètement tous les nucléons de ce noyau. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
