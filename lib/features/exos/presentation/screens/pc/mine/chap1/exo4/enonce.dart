import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class PcMineChap1Exo4Enonce extends ConsumerWidget {
  const PcMineChap1Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable du laboratoire d'analyse d'une entreprise spécialisée dans le décapage métallique. L'atelier de production utilise des solutions d'acide chlorhydrique de concentrations différentes selon les types de métaux à traiter. Aujourd'hui, suite à une commande urgente, tu dois préparer une solution de concentration intermédiaire en mélangeant deux solutions existantes.\n\nLe chef d'atelier te confie une mission délicate : analyser les propriétés de deux solutions d'HCl disponibles, puis les mélanger dans des proportions précises pour obtenir la concentration exacte requise par le procédé de décapage. Tes calculs de pH et de concentrations détermineront si le mélange respecte les spécifications techniques du traitement métallurgique.\n\n",
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
                    "Tu disposes d'un flacon de 250 mL de solution S1 d'acide chlorhydrique dont l'analyse pH-métrique indique un pH = 3,1.\n\nL'équation de dissolution de HCl dans l'eau est : ",
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
                    "Tu disposes également de 300 mL de solution S2 d'acide chlorhydrique dont l'analyse spectroscopique révèle une concentration en ions hydronium ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"[H_3O^+] = 1,5 \times 10^{-4}\ mol/L",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n2) Calculer les concentrations molaires de tous les ions présents dans S2 en utilisant [H₃O⁺] et le principe d'électroneutralité.\n\n",
        ),
        transition(transition: "ÉTAPE 3 - Préparation du mélange final\n\n"),
        sbTxt(
          txt:
              "Pour obtenir la solution de décapage requise, tu mélanges intégralement les deux solutions : 250 mL de S1 avec 300 mL de S2 pour obtenir une solution finale de 550 mL.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer les concentrations molaires de tous les ions dans le mélange final. En déduire le pH du mélange\n\n",
        ),
      ],
    );
  }
}
