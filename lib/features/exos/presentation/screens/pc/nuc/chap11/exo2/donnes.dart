import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants.dart';

class DonneesExo2Chap11 extends ConsumerWidget {
  const DonneesExo2Chap11({super.key});

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
              const TextSpan(text: "chlore-35: "),
              PhyNucLatexContants.chlore35, // Placeholder - verify if this constant exists
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
              const TextSpan(text: "chlore-36: "),
              PhyNucLatexContants.chlore36, // Placeholder - verify if this constant exists
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
              const TextSpan(text: "chlore-37: "),
              PhyNucLatexContants.chlore37, // Placeholder - verify if this constant exists
            ],
          ),
        ),
        SizedBox(height: 20),
        DonneesPhyNucLatexConstants.masseChlore35, // Placeholder - verify if this constant exists (34,969u)
        SizedBox(height: 20),
        DonneesPhyNucLatexConstants.mp, // Assuming this is standard and exists
        SizedBox(height: 20),
        DonneesPhyNucLatexConstants.mn, // Assuming this is standard and exists
      ],
    );
  }
}
