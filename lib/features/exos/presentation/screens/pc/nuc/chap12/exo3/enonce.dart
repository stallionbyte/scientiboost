import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap12Exo3Enonce extends ConsumerWidget {
  const PcNucChap12Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Vous êtes ingénieur dans une centrale nucléaire et étudiez la désintégration de l'uranium-238 en thorium-234 par émission alpha dans le combustible usé. \n \n",
        ),

        sbTxt(
          txt: "1) Écrire l'équation complète de cette désintégration\n \n",
        ),

        sbTxt(
          txt:
              "2) Calculer l'énergie libérée lors de cette désintégration. \n \n",
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
                    "3) Calculer l'énergie libérée par la désintégration de 3,4 . ",
              ),

              buildTex2SvgInWidgetSpan(math: r"10^{-7}", scale: 0.8),

              const TextSpan(text: " mol d'uranium-238 \n \n"),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
