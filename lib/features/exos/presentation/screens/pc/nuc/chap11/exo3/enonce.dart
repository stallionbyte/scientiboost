import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo3Enonce extends ConsumerWidget {
  const PcNucChap11Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "     En tant que physicien médical, vous devez étudier l'isotope cobalt-60 utilisé en radiothérapie.",
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),

        const Text(
          "1) Donner la composition nucléaire du nucléide cobalt-60.",
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),

        const Text(
          "2) Calculer en Kg la masse d'un noyau de cobalt-60",
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),

        const Text(
          "3) Calculer en Kg le défaut de masse d'un noyau de cobalt-60",
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),

        SizedBox(height: 40),

        Donnees(),
      ],
    );
  }
}
