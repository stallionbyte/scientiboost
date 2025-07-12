import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';

import 'donnes.dart';

class PcNucChap11Exo2Enonce extends ConsumerWidget {
  const PcNucChap11Exo2Enonce({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '     Vous êtes ingénieur dans une centrale nucléaire et devez évaluer la stabilité du combustible uranium-235 par rapport à celle du fer-56.',
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 30),

        Text(
          "1) Calculer l'énergie de liaison par nucléon d'un noyau d'uranium-235",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "2) Calculer l'énergie de liaison par nucléon d'un noyau de fer-56",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "3) Comparer les stabilités de ces deux nouyaux",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Donnees(),
      ],
    );
  }
}
