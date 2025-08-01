import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap12Exo7Enonce extends ConsumerWidget {
  const PcNucChap12Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "Tu effectues un stage au sein du service d’imagerie nucléaire d’un hôpital. Lors d’une séance de TEP (Tomographie par Émission de Positons), un médecin t’explique que l’un des traceurs les plus utilisés est un isotope du fluor, le fluor-18 qui est radioactif ",
              ),

              buildTex2SvgInWidgetSpan(math: r"\beta ^+"),

              const TextSpan(
                text:
                    " .Il te confie alors une mission : vérifier les données de préparation du traceur injecté chez les patients, en analysant son comportement radioactif. \n \n",
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de la désintégration radioactive subie par le fluor-18. \n \n",
        ),

        sbTxt(txt: "2) Calculer la période radioactive du fluor-18. \n \n"),

        sbTxt(
          txt:
              "3) Détermine au bout de combien de temps il ne restera que les deux tiers (2/3) des noyaux initiaux. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
