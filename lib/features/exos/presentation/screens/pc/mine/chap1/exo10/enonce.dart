import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo10Enonce extends ConsumerWidget {
  const PcMineChap1Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur procédés dans une usine de production de savons et détergents industriels. L'atelier de saponification utilise des solutions d'hydroxyde de sodium (soude caustique) de concentrations spécifiques pour transformer les huiles végétales en savon selon des réactions chimiques précises.\n\nLe chef de production te confie une mission technique importante : analyser une solution d'hydroxyde de sodium préparée en début de journée pour vérifier sa conformité, puis l'ajuster pour atteindre la concentration optimale requise par le nouveau procédé de fabrication. Tes calculs détermineront la quantité exacte de soude à ajouter pour optimiser le rendement de saponification.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Analyse de la solution initiale\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "Tu disposes d'une solution d'hydroxyde de sodium de volume V = 2,50 L. L'analyse au pH-mètre indique un pH = 13,3 et la mesure de la concentration massique donne 8,0 g/L.\n\nL'équation de dissolution de NaOH dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"NaOH \rightarrow Na^+ + OH^-",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer la concentration molaire de cette solution d'hydroxyde de sodium.\n\n",
        ),
        transition(
          transition: "ÉTAPE 2 - Détermination des concentrations ioniques\n\n",
        ),
        sbTxt(
          txt:
              "À partir de la concentration molaire et du pH mesurés, tu dois déterminer les concentrations de tous les ions présents dans la solution.\n\n",
        ),
        sbTxt(
          txt:
              "2) En déduire les concentrations molaires de tous les ions présents dans cette solution.\n\n",
        ),
        transition(transition: "ÉTAPE 3 - Ajustement de la concentration\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "Le nouveau procédé de saponification nécessite une concentration en ions Na⁺ de 0,350 mol/L pour optimiser la réaction avec les triglycérides.\n\n3) Quelle masse d'hydroxyde de sodium solide doit-on dissoudre dans cette solution pour que la concentration des ions Na⁺ soit exactement 0,350 mol/L ?\n\n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
