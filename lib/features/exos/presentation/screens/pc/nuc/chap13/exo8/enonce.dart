import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo8Enonce extends ConsumerWidget {
  const PcNucChap13Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es conseiller scientifique auprès du gouvernement pour les questions énergétiques. Le ministère de l'Énergie souhaite comparer deux technologies nucléaires pour définir la stratégie énergétique nationale : les réacteurs à fission actuels utilisant l'uranium-235 et les futurs réacteurs à fusion deutérium-tritium.\n\nTon rôle est d'analyser et de comparer l'efficacité énergétique de ces deux types de réactions nucléaires pour conseiller les décideurs politiques sur les investissements futurs en recherche et développement.\n\n",
        ),
        transition(transition: "PARTIE A - Réaction de fission\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "La fission de l'uranium-235 produit du césium-140 et un autre fragment : ",
              ),
              buildTex2SvgInWidgetSpan(
                math:
                    r"\begin{array}{l} _{92}^{235}U + _0^1n \longrightarrow _{55}^{140}Cs \\ + _Z^ARb + 3_0^1n \end{array}",
                scale: 4.0,
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
              "2) Calculer l'énergie libérée par cette réaction de fission à partir des masses données.\n\n",
        ),
        transition(transition: "PARTIE B - Réaction de fusion\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "La fusion deutérium-tritium produit de l'hélium-4 et libère une particule : ",
              ),
              buildTex2SvgInWidgetSpan(
                math:
                    r"\begin{array}{l} _1^2H + _1^3H \rightarrow _2^4He + _Z^AX \end{array}",
                scale: 2.0,
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "3) Écrire l'équation bilan complète de cette réaction de fusion nucléaire.\n\n",
        ),
        sbTxt(
          txt:
              "4) Calculer l'énergie libérée par cette réaction de fusion à partir des énergies de liaison par nucléon.\n\n",
        ),
        sbTxt(
          txt:
              "5) Pour chaque réaction calculer l'énergie libérée par unité de masse atomique (u) et conclure sur l'éfficacité énergétique de ces 2 réactions \n\n",
        ),
        Donnees(),
      ],
    );
  }
}
