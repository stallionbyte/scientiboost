import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo3Enonce extends ConsumerWidget {
  const PcMineChap1Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur chimiste dans une usine de production d'acide chlorhydrique industriel. L'entreprise doit fournir des solutions d'HCl de concentrations précises pour ses clients du secteur métallurgique. Aujourd'hui, tu dois préparer et contrôler une nouvelle série de solutions à partir de chlorure d'hydrogène gazeux.\n\nLe responsable production te confie une mission stratégique : partir du HCl gazeux pour préparer une solution de travail, puis effectuer une dilution contrôlée pour obtenir la concentration finale demandée par le client. Tes analyses de pH et de concentration détermineront si cette production respecte les spécifications strictes du cahier des charges.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Préparation de la solution S\n\n"),
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
                    "Dans une installation sous hotte aspirante, tu fais barboter 26,8 mL de chlorure d'hydrogène gazeux HCl(g) dans de l'eau distillée jusqu'à obtenir exactement 300 mL de solution S. Cette solution a un pH de 2,4.\n\nL'équation de dissolution du HCl gazeux dans l'eau est : ",
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
              "\n\n1) Donner la nature de la solution S et calculer sa concentration molaire.\n\n2) Calculer les concentrations molaires de tous les ions présents dans S. Comparer les concentrations de [H₃O⁺] et [OH⁻] \n\n",
        ),
        transition(
          transition: "ÉTAPE 2 - Préparation de la solution diluée S'\n\n",
        ),
        sbTxt(
          txt:
              "Le client nécessite une solution moins concentrée. Tu prélèves 40,0 mL de la solution S que tu dilues avec de l'eau distillée dans une fiole jaugée jusqu'à obtenir exactement 200 mL de solution S'.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer la concentration molaire de la solution S'. En déduire le facteur de dilution appliqué.\n\n4) Calculer la nouvelle concentration molaire des ions chlorure dans S'. Quel est l'effet de la dilution sur cette concentration ?\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
