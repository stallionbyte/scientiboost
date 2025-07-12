import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data_constants.dart';

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

        SizedBox(height: 20),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Notation de l'uranium-235: "),
              PhyNucConstants.uranium235,
            ],
          ),
        ),

        SizedBox(height: 20),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Notation du fer-56: "),
              PhyNucConstants.fer56,
            ],
          ),
        ),

        SizedBox(height: 20),
        PhyNucDonneesConstants.uEnMeVC2,
        SizedBox(height: 20),

        PhyNucDonneesConstants.masseU235EnU,

        SizedBox(height: 20),
        PhyNucDonneesConstants.masseFe56EnU,
        SizedBox(height: 20),

        PhyNucDonneesConstants.mp,

        SizedBox(height: 20),

        PhyNucDonneesConstants.mn,
      ],
    );
  }
}
