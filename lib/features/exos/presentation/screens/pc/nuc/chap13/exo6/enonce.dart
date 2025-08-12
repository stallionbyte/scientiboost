import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo6Enonce extends ConsumerWidget {
  const PcNucChap13Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur de production dans une centrale nucléaire de 1200 MW. Ta mission consiste à optimiser le fonctionnement du réacteur et à calculer la consommation quotidienne de combustible nucléaire. La centrale utilise de l'uranium-235 enrichi qui subit une fission lors de la capture d'un neutron thermique.\n\nLe directeur technique te demande d'analyser une journée type de fonctionnement pour préparer le rapport mensuel de production. Tu dois déterminer les paramètres de fonctionnement et évaluer l'efficacité énergétique du processus de fission.\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "La réaction de fission principale produit du baryum-144 et le Krypton, en libérant plusieurs neutrons : ",
              ),
              buildTex2SvgInWidgetSpan(
                math:
                    r"_{92}^{235}U + _0^1n \rightarrow _{56}^{144}Ba + _{Z}^{A}Kr + 3_0^1n",
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "1) Compléter l'équation bilan de cette réaction de fission nucléaire.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer en MeV l'énergie libérée par une seule réaction de fission.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer l'énergie électrique produite par la centrale en une journée de fonctionnement.\n\n",
        ),
        sbTxt(
          txt:
              "4) En déduire l'énergie nucléaire totale nécessaire en une journée, sachant que le rendement de conversion est de 33%.\n\n",
        ),
        sbTxt(
          txt:
              "5) Calculer le nombre de réactions de fission et la masse d'uranium-235 consommée en une journée. \n\n",
        ),

        Donnees(),
      ],
    );
  }
}
