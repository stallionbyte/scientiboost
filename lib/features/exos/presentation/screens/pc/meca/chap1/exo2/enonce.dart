import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo2Enonce extends ConsumerWidget {
  const PcMecaChap1Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable de la sécurité pour l'organisation du Tour du Faso, la plus grande compétition cycliste du Burkina Faso. Lors de la dernière étape entre Koudougou et Ouagadougou, un incident technique s'est produit avec l'un des coureurs de l'équipe nationale.\n\nLe cycliste Boureima SAWADOGO roulait à vitesse constante lorsqu'il a soudainement aperçu un obstacle sur la chaussée. Il a immédiatement actionné ses freins pour s'arrêter avant l'obstacle. Les commissaires de course te demandent d'analyser cette situation pour vérifier si les distances de sécurité étaient respectées.\n\nTon analyse déterminera si des modifications du parcours sont nécessaires pour garantir la sécurité des futurs coureurs.\n\n",
        ),
        transition(transition: "ANALYSE DE L'INCIDENT\n\n"),
        sbTxt(
          txt:
              "Phase 1 : Le cycliste roule à vitesse constante de 45 km/h pendant les 8 premières secondes de l'observation.\n\nPhase 2 : À t = 8 s, il aperçoit l'obstacle et freine uniformément jusqu'à l'arrêt complet avec une décélération de 3,2 m/s².\n\n",
        ),
        transition(transition: "QUESTIONS D'EXPERTISE\n\n"),
        sbTxt(
          txt:
              "1) En prenant comme origine le point où commence l'observation (t = 0), établir l'équation horaire de position x₁(t) du cycliste pendant la phase de vitesse constante (0 ≤ t ≤ 8 s).\n\n",
        ),
        sbTxt(
          txt:
              "2) Pour la phase de freinage (t ≥ 8 s), établir les équations horaires de position x₂(t) et de vitesse v₂(t) du cycliste. Prendre comme nouvelle origine des temps l'instant où commence le freinage.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer le temps total de freinage. À quel instant (depuis le début de l'observation) le cycliste s'arrête-t-il complètement ?\n\n",
        ),
        sbTxt(
          txt:
              "4) Calculer la distance totale parcourue par le cycliste depuis le début de l'observation jusqu'à son arrêt complet. Y'a t-il collusion entre le cycliste et l'obstacle ? \n\n",
        ),
      ],
    );
  }
}
