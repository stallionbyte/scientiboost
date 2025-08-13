import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMecaChap1Exo5Enonce extends ConsumerWidget {
  const PcMecaChap1Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur en génie civil pour l'entreprise SOBEA (Société Burkinabè d'Équipements et d'Aménagements) chargée de la construction du nouveau pont sur le fleuve Mouhoun à Dédougou. Lors des travaux de pose des poutres métalliques, un incident s'est produit.\n\nUn boulon de fixation de masse 250 g s'est détaché accidentellement d'une grue située à 45 mètres de hauteur au-dessus du niveau de l'eau. Le chef de chantier te demande d'analyser cet incident pour évaluer les risques de sécurité et réviser les protocoles de travail en hauteur.\n\nTon rapport technique déterminera les nouvelles mesures de protection à mettre en place pour éviter de futurs accidents sur ce chantier stratégique.\n\n",
        ),
        transition(transition: "ANALYSE DE L'INCIDENT\n\n"),
        sbTxt(
          txt:
              "Le boulon tombe en chute libre depuis la grue jusqu'à la surface de l'eau du fleuve Mouhoun. On néglige la résistance de l'air et on considère que le boulon part du repos (vitesse initiale nulle).\n\nPrise de référence : origine des hauteurs au niveau de la surface de l'eau, axe vertical orienté vers le bas.\n\n",
        ),
        transition(transition: "EXPERTISE TECHNIQUE\n\n"),
        sbTxt(
          txt:
              "1) Établir l'équation horaire de position y(t) du boulon au cours de sa chute libre, en prenant comme origine des temps l'instant de son détachement accidentel.\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir l'équation horaire de vitesse v(t) du boulon pendant sa chute libre.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer le temps de chute du boulon depuis son détachement jusqu'à son impact avec la surface de l'eau.\n\n",
        ),
        sbTxt(
          txt:
              "4) Déterminer la vitesse du boulon au moment de l'impact avec l'eau. Exprimer ce résultat en m/s puis en km/h.\n\n",
        ),

        Donnees(),
      ],
    );
  }
}
