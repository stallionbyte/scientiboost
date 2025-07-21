import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo7Enonce extends ConsumerWidget {
  const PcNucChap11Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '     Vous travaillez dans un laboratoire d\'analyse isotopique et devez distinguer trois isotopes du chlore : chlore-35, chlore-36, chlore-37.',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 30),
        Text(
          '1) Pourquoi ces nucléides appartiennent au même élément chimique ?',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        Text(
          '2) a) Calculer les énergies de liaison par nucléon de ces nucléides.',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        Text(
          '   b) Classez ces nucléides par ordre de stabilité croissante',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Donnees(),
      ],
    );
  }
}
