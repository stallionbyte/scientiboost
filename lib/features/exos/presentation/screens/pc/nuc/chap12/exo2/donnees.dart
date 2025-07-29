import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        const Text(
          "Données:",
          style: TextStyle(
            fontSize: ExoConstants.fontSize,

            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),

        Text(
          PhyNucDonneesConstants.periodeIode131EnJour,
          style: const TextStyle(fontSize: ExoConstants.fontSize),
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.nombreAvogadro,
      ],
    );
  }
}
