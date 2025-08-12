import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo9Enonce extends ConsumerWidget {
  const PcNucChap13Exo9Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es astrophysicien dans un observatoire spatial international. Ton équipe étudie l'évolution stellaire et la durée de vie du Soleil pour comprendre l'avenir de notre système solaire. Le Soleil tire son énergie de réactions de fusion nucléaire qui transforment l'hydrogène en hélium dans son cœur.\n\nLe directeur de recherche te demande d'analyser le processus de fusion solaire et d'estimer la durée de vie restante de notre étoile. Cette étude servira à planifier les missions spatiales futures et à anticiper les changements climatiques à long terme sur Terre.\n\n",
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
                    "La réaction de fusion principale dans le Soleil transforme quatre noyaux d'hydrogène en un noyau d'hélium-4 selon le cycle proton-proton simplifié : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"4^1_1H \rightarrow ^4_2He + x_1^0e + 2_0^0\nu",
                scale: 1.5,
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "\n \n 1) écrire cette équation bilan de fusion nucléaire en déterminant x.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer l'énergie libérée par cette réaction de fusion à partir des énergies de liaison données.\n\n",
        ),
        sbTxt(
          txt:
              "3) En déduire la perte de masse correspondante en kg pour une seule réaction.\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "4) Sachant que "),
              buildTex2SvgInWidgetSpan(math: r"3,8 \times 10^{38}"),
              const TextSpan(
                text:
                    " réactions de fusion se produisent chaque seconde dans le Soleil, calculer dans combien d'années 10% de la masse du soleil sera convertie en énergie.\n\n",
              ),
            ],
          ),
        ),
        Donnees(),
      ],
    );
  }
}
