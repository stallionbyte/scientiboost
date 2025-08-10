import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo1Enonce extends ConsumerWidget {
  const PcNucChap13Exo1Enonce({super.key});
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
                    "Tu es ingénieur nucléaire dans une centrale nucléaire. Suite à un essai technique, on te demande d'analyser la fission de l'uranium-235 dans le réacteur n°3. Lors du contrôle, un échantillon de 2,4.10⁻⁸ mol d'uranium-235 pur a subi une fission complète selon la réaction :\n\n",
              ),

              buildTex2SvgInWidgetSpan(
                math:
                    r"\begin{array}{l} ^{235}_{92}\text{U} + ^{1}_{0}\text{n} \longrightarrow ^{A}_{36}\text{Kr} \\ + ^{139}_{Z}\text{Ba} + 3^{1}_{0}\text{n} \end{array}",
                scale: 4.0,
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "\n \n 1) Écrire l'équation complète de cette réaction de fission en précisant les lois de conseration. \n \n",
        ),
        sbTxt(
          txt:
              "2) Calculer l'énergie libérée (en J) pour un noyau d'uranium-235 fissionné, en utilisant les masses nucléaires fournies.\n \n",
        ),
        sbTxt(
          txt:
              "3) En déduire l'énergie totale (en J) produite par l'échantillon testé de 2,4.10⁻⁸ mol. \n \n",
        ),
        sbTxt(
          txt:
              "4) Sachant que la centrale consomme 3,7 kg d'uranium-235 par jour, calculer la puissance thermique moyenne (en MW) du réacteur.\n \n",
        ),

        Donnees(),
      ],
    );
  }
}
