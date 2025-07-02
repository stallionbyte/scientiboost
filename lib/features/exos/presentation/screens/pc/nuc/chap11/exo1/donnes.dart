import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants.dart';

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
              const TextSpan(text: "carbone-14: "),
              PhyNucLatexContants.carbone14,
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
              const TextSpan(text: "carbone-12: "),
              PhyNucLatexContants.carbone12,
            ],
          ),
        ),

        SizedBox(height: 20),
        DonneesPhyNucLatexConstants.u,
        SizedBox(height: 20),

        DonneesPhyNucLatexConstants.masseC14,

        SizedBox(height: 20),

        DonneesPhyNucLatexConstants.mp,

        SizedBox(height: 20),

        DonneesPhyNucLatexConstants.mn,
      ],
    );
  }
}
