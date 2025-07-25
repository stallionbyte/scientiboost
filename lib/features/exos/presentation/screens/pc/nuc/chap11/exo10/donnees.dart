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
        Text(
          "Données:",
          style: const TextStyle(
            fontSize: ExoConstants.fontSize,

            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),

        PhyNucDonneesConstants.c,

        const SizedBox(height: 20),

        Text(
          PhyNucDonneesConstants.unAnEnJours,
          style: const TextStyle(fontSize: ExoConstants.fontSize * 1.2),
        ),
      ],
    );
  }
}
