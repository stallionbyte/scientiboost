import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo9Enonce extends ConsumerWidget {
  const PcMineChap1Exo9Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es technicien en contrôle qualité dans une entreprise de fabrication de circuits imprimés électroniques. L'atelier de gravure utilise des solutions d'acide chlorhydrique de concentrations spécifiques pour graver les pistes de cuivre sur les cartes électroniques.\n\nLe responsable production te confie une mission technique délicate : analyser une solution d'acide chlorhydrique préparée en laboratoire pour vérifier qu'elle respecte les spécifications requises pour le processus de gravure. Tu disposes du volume de la solution et du rapport entre les concentrations d'ions, mais tu dois déterminer les concentrations exactes et retrouver les conditions de préparation.\n\n",
        ),
        transition(
          transition:
              "ÉTAPE 1 - Analyse de la solution d'acide chlorhydrique\n\n",
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
                    "Tu disposes d'une solution d'acide chlorhydrique de volume V = 750 mL. L'analyse chimique révèle que le rapport des concentrations ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"\frac{[H_3O^+]}{[OH^-]} = 2,5 \times 10^{10}",
                scale: 2.0,
              ),
              const TextSpan(
                text:
                    " à 25°C.\n\nL'équation de dissolution de HCl dans l'eau est : ",
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
              "\n\n1) Calculer les concentrations molaires de tous les ions présents dans cette solution d'acide chlorhydrique. En déduire le pH\n\n",
        ),
        transition(
          transition: "ÉTAPE 2 - Détermination de la concentration\n\n",
        ),
        sbTxt(
          txt:
              "À partir des concentrations ioniques calculées, tu dois déterminer la concentration molaire de la solution d'acide chlorhydrique.\n\n",
        ),
        sbTxt(
          txt:
              "2) En déduire la concentration molaire de la solution d'acide chlorhydrique \n\n",
        ),
        transition(
          transition:
              "ÉTAPE 3 - Reconstitution du processus de préparation\n\n",
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
                    "Pour comprendre comment cette solution a été préparée, tu dois calculer le volume de chlorure d'hydrogène gazeux HCl(g) qui a été dissous dans l'eau pour obtenir cette solution.\n\n3) Calculer le volume de HCl gazeux qui a été dissous pour préparer cette solution.\n\n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
