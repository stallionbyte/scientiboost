import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo1Enonce extends ConsumerWidget {
  const PcNucChap11Exo1Enonce({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '     En tant que technicien dans un laboratoire de physique nucléaire, vous devez analyser un échantillon contenant du carbone-14 utilisé pour la datation archéologique.',
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 30),

        Text(
          "1) a) Déterminer précisément la composition d'un noyau de carbone-14",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "b) Pourquoi le carbone-14 est un isotope du carbone-12",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "2) Calculez la masse en "),

              PhyNucConstants.mevc2,

              const TextSpan(text: "  d'un noyau de carbone-14 "),
            ],
          ),
        ),

        SizedBox(height: 20),

        Text(
          "3) a) Calculer la masse obtenue en additionnant les masses des nucléons séparés d'un noyau de carbone-14",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Text(
          "b) Comparer cette masse avec la masse du noyau de carbone-14. Expliquer la différence.",
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 20),

        Donnees(),
      ],
    );
  }
}
