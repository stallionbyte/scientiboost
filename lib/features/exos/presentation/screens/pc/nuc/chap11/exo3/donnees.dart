import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
              const TextSpan(text: "Notation du cobalt-60: "),

              PhyNucConstants.cobalt60,
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
              const TextSpan(
                text: "Energie de masse d'un noyau de cobalt-60: 8,9325 . ",
              ),

              exp(exp: r"-9"),

              const TextSpan(text: " J "),
            ],
          ),
        ),

        SizedBox(height: 20),

        PhyNucDonneesConstants.c,

        SizedBox(height: 20),

        PhyNucDonneesConstants.uEnKg,

        SizedBox(height: 20),

        PhyNucDonneesConstants.mp,

        SizedBox(height: 20),

        PhyNucDonneesConstants.mn,

        SizedBox(height: 20),
      ],
    );
  }
}
