import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo3Enonce extends ConsumerWidget {
  const PcNucChap13Exo3Enonce({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    "Vous êtes ingénieur(e) au sein d'une équipe chargée de moderniser une centrale nucléaire. Lors d'un test de performance, un échantillon de combustible contenant du thorium-232 est bombardé par des neutrons et subit une fission produisant deux fragments identifiés comme ",
              ),

              buildTex2SvgInWidgetSpan(math: r"_{38}^{x}Sr\ et\ _{y}^{144}Te"),

              const TextSpan(
                text:
                    " accompagnés d'un neutron. Pour subir la fission, le thorium-232 absorbe un neutron. Vous devez établir l'équation complète de la réaction, calculer l'énergie libérée par fission à partir de la perte de masse, puis déterminer l'énergie totale dégagée par un échantillon de masse donnée. Vos conclusions permettront d'évaluer le rendement potentiel de la centrale après modernisation.\n\n",
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de la réaction nucléaire complète, en calculant x et y.\n\n",
        ),
        sbTxt(
          txt:
              "2) En utilisant les masses nucléaires fournies, calculer la perte de masse lors de la réaction et en déduire l'énergie libérée par fission (en MeV).\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer l'énergie totale libérée par 15 g de thorium-232 subissant la fission décrite.\n\n",
        ),

        Donnees(),
      ],
    );
  }
}
