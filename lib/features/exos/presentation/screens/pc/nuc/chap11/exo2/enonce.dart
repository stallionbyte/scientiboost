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
          "Vous travaillez dans un laboratoire d'analyse isotopique et devez distinguer trois isotopes du chlore : chlore-35, chlore-36, et chlore-37.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 30),
        Text(
          "1) Établissez un tableau comparatif de la composition nucléaire de ces trois isotopes.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        Text(
          "2) Calculez l'énergie de liaison de chlore-35.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        Text(
          "3) Expliquez pourquoi ces trois nucléides appartiennent au même élément chimique malgré leurs propriétés nucléaires différentes.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        DonneesExo2Chap11(),
      ],
    );
  }
}
