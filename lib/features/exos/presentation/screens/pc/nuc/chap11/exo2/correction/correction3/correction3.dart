import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/constants.dart';

class PcNucChap11Exo2Correction3 extends ConsumerStatefulWidget {
  const PcNucChap11Exo2Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PcNucChap11Exo2Correction3State();
}

class _PcNucChap11Exo2Correction3State
    extends ConsumerState<PcNucChap11Exo2Correction3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Explication:",
            style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 15),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(
                    text:
                        "L'identité d'un élément chimique est déterminée par son numéro atomique (Z), qui représente le nombre de protons dans le noyau."),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(text: "Pour les trois nucléides donnés :"),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: ExoConstants.fontSize, color: Colors.black),
                children: <InlineSpan>[
                  const TextSpan(text: "- Chlore-35 ("),
                  PhyNucLatexContants.chlore35,
                  const TextSpan(text: ") a Z = 17 protons."),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: ExoConstants.fontSize, color: Colors.black),
                children: <InlineSpan>[
                  const TextSpan(text: "- Chlore-36 ("),
                  PhyNucLatexContants.chlore36,
                  const TextSpan(text: ") a Z = 17 protons."),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                    fontSize: ExoConstants.fontSize, color: Colors.black),
                children: <InlineSpan>[
                  const TextSpan(text: "- Chlore-37 ("),
                  PhyNucLatexContants.chlore37,
                  const TextSpan(text: ") a Z = 17 protons."),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(
                    text:
                        "Puisque ces trois nucléides possèdent le même nombre de protons (Z = 17), ils appartiennent tous au même élément chimique : le Chlore."),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                  fontSize: ExoConstants.fontSize, color: Colors.black),
              children: <InlineSpan>[
                const TextSpan(
                    text:
                        "Leurs nombres de neutrons différents (respectivement 18, 19, et 20) font d'eux des isotopes du chlore. Les isotopes d'un même élément ont des propriétés nucléaires distinctes (comme la masse atomique et la stabilité) mais conservent les mêmes propriétés chimiques, car celles-ci dépendent principalement du nombre de protons (et donc d'électrons dans un atome neutre)."),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
