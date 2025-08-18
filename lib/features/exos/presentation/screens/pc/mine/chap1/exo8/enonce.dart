import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo8Enonce extends ConsumerWidget {
  const PcMineChap1Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        sbTxt(
          txt:
              "Tu es ingénieur chimiste dans une usine de traitement des eaux industrielles qui dessert plusieurs entreprises manufacturières de la région. L'installation utilise différents sels d'aluminium et de potassium pour optimiser les processus de coagulation-floculation et éliminer efficacement les particules colloïdales des effluents.\n\nLe responsable technique te confie une mission critique : préparer trois solutions de sels spécialisés avec des concentrations précises, puis les mélanger pour créer un cocktail de traitement optimisé. Tes calculs de concentrations ioniques détermineront si le mélange respecte les paramètres chimiques requis pour maximiser l'efficacité du traitement des eaux industrielles.\n\n",
        ),
        transition(
          transition: "ÉTAPE 1 - Préparation des solutions S1 et S3\n\n",
        ),
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
                    "Tu prépares une solution S1 en dissolvant 17,4 g de sulfate de potassium ",
              ),
              buildTex2SvgInWidgetSpan(math: r"K_2SO_4", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 500 mL de solution.\n\nL'équation de dissolution est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"K_2SO_4 \rightarrow 2K^+ + SO_4^{2-}",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\nTu prépares également une solution S3 en dissolvant 26,7 g de chlorure d'aluminium ",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              buildTex2SvgInWidgetSpan(math: r"AlCl_3", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 600 mL de solution.\n\nL'équation de dissolution est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"AlCl_3 \rightarrow Al^{3+} + 3Cl^-",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer les concentrations molaires de S1 et S3. En déduire les concentrations de tous les ions présents dans S1 et S3.\n\n",
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
                text: "Tu disposes d'une solution S2 de sulfate d'aluminium ",
              ),
              buildTex2SvgInWidgetSpan(math: r"Al_2(SO_4)_3", scale: 1.0),
              const TextSpan(
                text:
                    " de concentration 0,120 mol/L dans un volume de 400 mL.\n\nL'équation de dissolution est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"Al_2(SO_4)_3 \rightarrow 2Al^{3+} + 3SO_4^{2-}",
                scale: 1.6,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n2) Calculer la masse de Al₂(SO₄)₃ dissoute pour préparer cette solution S2. Calculer les concentrations des ions Al³⁺ et ions SO₄²⁻ dans S2 \n\n",
        ),
        transition(
          transition: "ÉTAPE 3 - Préparation du cocktail de traitement\n\n",
        ),
        sbTxt(
          txt:
              "Pour créer le cocktail de traitement optimisé, tu mélanges 200 mL de solution S1, 150 mL de solution S2 et 180 mL de solution S3.\n\n",
        ),
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
                    "3) Calculer les concentrations molaires de tous les ions dans le mélange final. Vérifier l'électroneutralité du mélange \n\n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
