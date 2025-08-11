import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo4Enonce extends ConsumerWidget {
  const PcNucChap13Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur dans un laboratoire de recherche sur la fusion nucléaire contrôlée. Ton équipe travaille sur l'optimisation des réactions de fusion pour un futur réacteur expérimental. "
              "L'une des réactions étudiées est la fusion entre un noyau de deutérium et un noyau de tritium, qui produit un noyau d'hélium et libère une particule. "
              "Cependant, lors de l'analyse des données expérimentales, le détecteur n'a pas pu identifier complètement la particule.\n\n"
              "Ton rôle est d'analyser cette réaction de fusion pour valider les résultats expérimentaux et calculer les paramètres énergétiques nécessaires "
              "à l'optimisation du processus.\n\n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "La réaction étudiée est : "),
              buildTex2SvgInWidgetSpan(
                math: r"_1^2H + _1^3H \rightarrow _2^4He + ^A_ZX",
              ),
              const TextSpan(text: " où X est la particule inconnue."),
            ],
          ),
        ),

        sbTxt(txt: "\n\n"),

        sbTxt(
          txt:
              "1) Écrire l'équation bilan complète de cette réaction de fusion en déterminant A et Z de la particule inconnue X produite.\n\n",
        ),

        sbTxt(
          txt:
              "2) Calculer l'énergie libérée par cette réaction de fusion à partir des énergies de liaison données.\n\n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "3) En déduire la perte de masse "),
              buildTex2SvgInWidgetSpan(math: r"\Delta m", scale: 0.8),
              const TextSpan(
                text: " correspondante en unités atomiques (u).\n\n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
