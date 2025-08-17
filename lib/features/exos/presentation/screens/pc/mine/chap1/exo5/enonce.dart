import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class PcMineChap1Exo5Enonce extends ConsumerWidget {
  const PcMineChap1Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable du laboratoire de contrôle qualité d'une savonnerie artisanale qui produit des savons biologiques haut de gamme. L'entreprise utilise des solutions d'hydroxyde de sodium (soude caustique) de concentrations différentes selon les types de savons à fabriquer. Aujourd'hui, suite à une commande spéciale, tu dois préparer une solution de concentration intermédiaire.\n\nLe maître savonnier te confie une mission cruciale : analyser les propriétés de deux solutions de NaOH disponibles en stock, puis les mélanger dans des proportions précises pour obtenir la concentration exacte requise par la recette de saponification. Tes calculs de pH et de concentrations détermineront si le mélange respecte les paramètres chimiques optimaux pour la fabrication du savon.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Analyse de la solution S1\n\n"),
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
                    "Tu disposes d'un bidon de 400 mL de solution S1 d'hydroxyde de sodium dont l'analyse pH-métrique indique un pH = 8,6.\n\nL'équation de dissolution de NaOH dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"NaOH_{(s)} \longrightarrow Na^+_{(aq)} + OH^-_{(aq)}",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer les concentrations molaires de tous les ions présents dans S1 en utilisant le pH et le principe d'électroneutralité.\n\n",
        ),
        transition(transition: "ÉTAPE 2 - Analyse de la solution S2\n\n"),
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
                    "Tu disposes également de 350 mL de solution S2 d'hydroxyde de sodium dont l'analyse par dosage révèle une concentration en ions hydroxyde ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"[OH^-] = 2,5 \times 10^{-4}\ mol/L",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n2) Calculer les concentrations molaires de tous les ions présents dans S2 en utilisant [OH⁻] et le principe d'électroneutralité.\n\n",
        ),
        transition(transition: "ÉTAPE 3 - Préparation du mélange final\n\n"),
        sbTxt(
          txt:
              "Pour obtenir la solution de saponification requise, tu mélanges intégralement les deux solutions : 400 mL de S1 avec 350 mL de S2 pour obtenir une solution finale de 750 mL.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer la concentration molaire des ions hydroxyde dans le mélange final. En déduire le pH du mélange\n\n",
        ),
      ],
    );
  }
}
