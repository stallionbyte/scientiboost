import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'donnees.dart';

class PcNucChap11Exo5Enonce extends ConsumerWidget {
  const PcNucChap11Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es consultant en radioprotection dans une entreprise qui conçoit des équipements de blindage pour les laboratoires utilisant des substances radioactives. On te demande d'évaluer le niveau de stabilité d’un isotope du fer, le fer-56, pour déterminer s’il est adapté à être utilisé comme référence stable dans la calibration des instruments. \n \n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "Un rapport t’indique que l’énergie de liaison par nucléon du noyau de fer-56 est de :",
              ),

              buildTex2SvgInWidgetSpan(
                math: r"E_{l/nuc} = 1,28 \cdot 10^{-12}\ J",
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "\n \n Ton rôle est d’en déduire les propriétés nucléaires du noyau de fer-56. \n \n",
        ),

        sbTxt(
          txt: "1) Calculer l’énergie de liaison d'un noyau de fer-56 \n \n",
        ),

        sbTxt(txt: "2) Convertir l’énergie de liaison obtenue en MeV \n \n"),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "3) Calculer la masse d'un noyau de fer-56 en ",
              ),

              buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),

              const TextSpan(text: " puis en u \n \n"),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
