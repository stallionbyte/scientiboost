import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo4Enonce extends ConsumerWidget {
  const PcNucChap11Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Vous dirigez une équipe de recherche étudiant la synthèse d\'éléments super-lourds et devez analyser la stabilité théorique du noyau hypothétique X de nombre de masse 300 et de numéro atomique 120.',
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 30),

        Text(
          "1) Calculez son défaut de masse en supposant une énergie de liaison par nucléon de 7,5 MeV/nucléon.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "2) Calculez la masse de ce noyau.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "3) Calculez l'énergie nécessaire pour séparer complètement tous les nucléons de ce noyau.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Donnees(),
      ],
    );
  }
}
