import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class PcMecaChap1Exo7Enonce extends ConsumerWidget {
  const PcMecaChap1Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur de traction pour la SITARAIL (Société Internationale de Transport Africain par Rail) responsable de la ligne ferroviaire Ouagadougou-Bobo-Dioulasso. Dans le cadre de l'amélioration du service voyageurs, tu dois optimiser les temps de parcours du train express qui relie la gare de Koudougou à celle de Kindi.\n\nLe directeur général te demande d'analyser les performances actuelles du train pour proposer un nouveau planning qui réduira la durée du trajet tout en respectant les normes de sécurité ferroviaire. Cette optimisation permettra d'attirer plus de passagers et de concurrencer efficacement le transport routier.\n\nTon expertise technique déterminera les nouveaux horaires qui seront appliqués dès la prochaine saison ferroviaire.\n\n",
        ),
        transition(transition: "PROFIL DE MARCHE ACTUEL\n\n"),
        sbTxt(
          txt:
              "Phase 1 : Départ de Koudougou\n\nLe train part du repos et accélère uniformément pendant 4 minutes jusqu'à atteindre sa vitesse de croisière de 80 km/h.\n\nPhase 2 : Vitesse de croisière\n\nLe train maintient sa vitesse constante de 80 km/h pendant une durée à déterminer.\n\nPhase 3 : Approche de Kindi\n\nLe train décélère uniformément pendant 3 minutes depuis sa vitesse de croisière jusqu'à l'arrêt complet en gare de Kindi.\n\n",
        ),
        transition(transition: "ANALYSE DU PARCOURS\n\n"),
        sbTxt(
          txt:
              "1) Établir les équations horaires de position x₁(t) et de vitesse v₁(t) du train pendant la phase d'accélération au départ de Koudougou (0 ≤ t ≤ 4 min).\n\n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              height: 1.5,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "2) Établir les équations horaires de position x₃(t) et de vitesse v₃(t) du train pendant la phase de décélération à l'approche de Kindi. Prendre comme nouvelle origine des temps le début de la décélération. x₃(t) est fonction de ",
              ),

              buildTex2SvgInWidgetSpan(math: r"x_{3,0}"),

              const TextSpan(
                text:
                    " position initiale de la 3 ème phase du mouvement du train \n\n",
              ),
            ],
          ),
        ),

        sbTxt(
          txt:
              "3) Sachant que le temps total du trajet Koudougou-Kindi est de 25 minutes, calculer la durée de la phase à vitesse constante.\n\n",
        ),
        sbTxt(
          txt:
              "4) Déterminer la distance totale entre les gares de Koudougou et Kindi.\n\n",
        ),
      ],
    );
  }
}
