import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo7Enonce extends ConsumerWidget {
  const PcNucChap11Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous travaillez dans un laboratoire d'analyse isotopique et devez distinguer trois isotopes du chlore : chlore-35, chlore-36, chlore-37. \n \n",
        ),
        sbTxt(
          txt:
              "1) Pourquoi ces nucléides appartiennent au même élément chimique ? \n \n",
        ),
        sbTxt(
          txt:
              "2) a) Calculer les énergies de liaison par nucléon de ces nucléides. \n \n",
        ),
        sbTxt(
          txt:
              "   b) Classez ces nucléides par ordre de stabilité croissante \n \n",
        ),
        Donnees(),
      ],
    );
  }
}
