import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          "Données:",
          style: const TextStyle(
            fontSize: ExoConstants.fontSize,

            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 20),

        notationSymbolique(
          X: r"Ra",
          Z: r"88",
          A: r"226",
          nomNoyau: "radium-226",
        ),

        const SizedBox(height: 20),

        PhyNucDonneesConstants.masseRa226EnU,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.mp,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.mn,

        const SizedBox(height: 20),

        PhyNucDonneesConstants.uEnMeVC2,

        const SizedBox(height: 20),
      ],
    );
  }
}
