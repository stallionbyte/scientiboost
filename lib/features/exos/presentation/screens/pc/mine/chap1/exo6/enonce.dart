import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo6Enonce extends ConsumerWidget {
  const PcMineChap1Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur chimiste dans une entreprise de traitement des métaux qui utilise des procédés de gravure acide pour nettoyer et décaper les surfaces métalliques. L'atelier nécessite des solutions d'acide chlorhydrique de concentrations précises, ainsi que des solutions de sulfate de fer III pour les bains de passivation anti-corrosion.\n\nLe responsable production te confie une mission technique délicate : préparer une solution de travail à partir d'acide chlorhydrique commercial concentré, puis la mélanger avec une solution de sulfate de fer III pour obtenir un bain de traitement spécialisé. Tes calculs de concentrations détermineront si le mélange respecte les spécifications requises pour les traitements de surface industriels.\n\n",
        ),
        transition(
          transition:
              "ÉTAPE 1 - Préparation à partir de la solution commerciale S1\n\n",
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
                    "Tu disposes d'une solution commerciale S1 d'acide chlorhydrique de densité d = 1,18 et de pourcentage en masse 36,0 %. Tu dilues 50,0 mL de cette solution commerciale S1 dans une fiole jaugée de 250 mL pour obtenir la solution de travail S'1.\n\nL'équation de dissolution de HCl dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"HCl + H_2O \rightarrow H_3O^+ + Cl^-",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer les concentrations molaires de S1 et S'1. En déduire la concentration des ions Cl⁻ dans S'1.\n\n",
        ),
        transition(
          transition: "ÉTAPE 2 - Préparation de la solution de sulfate S2\n\n",
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
                    "Tu prépares également une solution S2 en dissolvant 20,0 g du sel sulfate de fer III ",
              ),
              buildTex2SvgInWidgetSpan(math: r"(Fe_2(SO_4)_3)", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 500 mL de solution.\n\nL'équation de dissolution du sulfate de fer III dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"Fe_2(SO_4)_3 \rightarrow 2Fe^{3+} + 3SO_4^{2-}",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n2) Calculer les concentrations molaires des ions Fe³⁺ et SO₄²⁻ présents dans S2.\n\n",
        ),
        transition(
          transition: "ÉTAPE 3 - Préparation du bain de traitement\n\n",
        ),
        sbTxt(
          txt:
              "Pour obtenir le bain de traitement final, tu mélanges 200 mL de solution S'1 avec 150 mL de solution S2.\n\n",
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
                    "3) Calculer les concentrations molaires des ions Cl⁻, Fe³⁺ et SO₄²⁻ dans le mélange final.\n\n",
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        Donnees(),
      ],
    );
  }
}
