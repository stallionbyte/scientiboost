import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo5Enonce extends ConsumerWidget {
  const PcNucChap13Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es physicien dans une équipe de recherche internationale sur l'énergie de fusion. Votre projet consiste à développer un mini-réacteur de fusion portable pour alimenter des bases spatiales. L'une des réactions les plus prometteuses est la fusion lithium-deutérium qui produit deux noyaux d'hélium-4.\n\nLors des tests en laboratoire, ton équipe a réussi à faire fusionner une petite quantité de lithium-6 avec du deutérium. Tu dois maintenant analyser cette réaction pour évaluer son potentiel énergétique et déterminer si elle pourrait être viable pour l'application spatiale envisagée.\n\n",
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
                    "La réaction étudiée fait intervenir un noyau de lithium ( ",
              ),
              buildTex2SvgInWidgetSpan(math: r"_3^6Li"),
              const TextSpan(text: " ) et un noyau de deutérium ( "),
              buildTex2SvgInWidgetSpan(math: r"_1^2H"),
              const TextSpan(
                text: " ) pour produire deux noyaux identiques d'hélium ( ",
              ),
              buildTex2SvgInWidgetSpan(math: r"_x^4He"),
              const TextSpan(text: " )"),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "1) Écrire l'équation bilan complète de cette réaction de fusion nucléaire en déterminant x\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer l'énergie libérée par cette réaction à partir des masses des noyaux.\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "3) Ton équipe dispose de "),
              buildTex2SvgInWidgetSpan(math: r"2,5 \times 10^{-6}\ g"),
              const TextSpan(
                text:
                    " de lithium-6. Calculer l'énergie totale qui pourrait être libérée si tout ce lithium réagissait complètement.\n\n",
              ),
            ],
          ),
        ),
        Donnees(),
      ],
    );
  }
}
