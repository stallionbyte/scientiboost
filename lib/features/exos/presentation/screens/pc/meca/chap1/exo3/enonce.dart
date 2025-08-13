import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo3Enonce extends ConsumerWidget {
  const PcMecaChap1Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur en chef de l'écurie Faso Racing Team qui participe au championnat d'Afrique de l'Ouest de course automobile. Ton équipe prépare la voiture n°7 pour le Grand Prix de Ouagadougou qui se déroulera sur le circuit international de Loumbila.\n\nLors des essais libres, le pilote Abdoulaye KABORÉ doit effectuer des tests de performance pour optimiser les réglages de la voiture. Il part de l'arrêt sur la ligne de départ et doit atteindre sa vitesse maximale le plus rapidement possible, puis maintenir cette vitesse.\n\nTon analyse des données de télémétrie permettra d'ajuster la stratégie de course pour la qualification.\n\n",
        ),
        transition(transition: "DONNÉES TÉLÉMÉTRIE\n\n"),
        sbTxt(
          txt:
              "Phase 1 : Accélération depuis l'arrêt\nLa voiture accélère uniformément pendant 12 secondes avec une accélération de 4,5 m/s² jusqu'à atteindre sa vitesse maximale.\n\nPhase 2 : Vitesse de pointe\nÀ partir de t = 12 s, la voiture maintient sa vitesse maximale constante.\n\n",
        ),
        transition(transition: "QUESTIONS\n\n"),
        sbTxt(
          txt:
              "1) Établir l'équation horaire de position x₁(t) et de vitesse v₁(t) de la voiture pendant la phase d'accélération (0 ≤ t ≤ 12 s).\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir l'équation horaire de position x₂(t) de la voiture pendant la phase à vitesse constante (t ≥ 12 s). Prendre comme référence de temps le début de l'accélération.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer la vitesse maximale atteinte par la voiture. Exprimer ce résultat en m/s puis en km/h.\n\n",
        ),
        sbTxt(
          txt:
              "4) Déterminer la distance totale parcourue par la voiture au bout de 30 secondes depuis le départ.\n\n",
        ),
      ],
    );
  }
}
