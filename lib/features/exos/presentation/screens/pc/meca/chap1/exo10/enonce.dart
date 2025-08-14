import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo10Enonce extends ConsumerWidget {
  const PcMecaChap1Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es expert en sécurité routière pour la Direction Générale de la Police Nationale du Burkina Faso. Suite à un accident grave survenu sur la route nationale RN2 entre Ouahigouya et Djibo, tu dois reconstituer les circonstances pour déterminer les responsabilités.\n\nLes témoins rapportent qu'un camion de transport de marchandises roulait à vitesse constante lorsque le chauffeur a soudainement aperçu un troupeau de zébus traversant la chaussée. Il a immédiatement actionné les freins d'urgence, mais l'impact n'a pu être évité.\n\nTon rapport d'expertise technique déterminera si le chauffeur respectait les limitations de vitesse et les distances de sécurité réglementaires sur cet axe routier vital pour l'économie pastorale de la région.\n\n",
        ),
        transition(transition: "RECONSTITUTION DE L'ACCIDENT\n\n"),
        sbTxt(
          txt:
              "Phase 1 : Roulage normal\n\nLe camion circulait à vitesse constante de 90 km/h sur la RN2. Il frène 5 s après l'aperçu du troupeau.\n\nPhase 2 : Freinage d'urgence\n\n5s après l'aperçu du danger, le chauffeur actionne les freins. Le camion décélère uniformément avec une décélération de 6,5 m/s² jusqu'à l'arrêt complet.\n\n",
        ),
        transition(transition: "EXPERTISE JUDICIAIRE\n\n"),
        sbTxt(
          txt:
              "1) Établir l'équation horaire de position x₁(t) du camion pendant la phase de roulage à vitesse constante (0 ≤ t ≤ 5 s), en prenant comme origine le début de l'observation.\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir les équations horaires de position x₂(t) et de vitesse v₂(t) du camion pendant la phase de freinage. Prendre comme nouvelle origine des temps l'instant où commence le freinage.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer la distance de freinage nécessaire pour l'arrêt complet du camion depuis le début du freinage.\n\n",
        ),
        sbTxt(
          txt:
              "4) Déterminer le temps de freinage. En déduire le temps total depuis l'aperçu du troupeau \n\n",
        ),
      ],
    );
  }
}
