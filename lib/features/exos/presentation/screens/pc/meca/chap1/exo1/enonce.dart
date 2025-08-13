import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo1Enonce extends ConsumerWidget {
  const PcMecaChap1Exo1Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur en sécurité routière pour la Direction Générale des Transports Terrestres du Burkina Faso. Suite à plusieurs accidents sur la route nationale RN1 entre Ouagadougou et Bobo-Dioulasso, tu dois analyser une situation de dépassement dangereuse qui s'est produite hier.\n\nLes témoins rapportent qu'un motocycliste tentait de rattraper une voiture qui roulait à vitesse constante. Le motocycliste, initialement à l'arrêt au bord de la route, a démarré au moment où la voiture passait devant lui. Malheureusement, l'accident s'est produit à l'endroit où le motocycliste a rattrapé la voiture.\n\nTon rapport d'expertise déterminera si des mesures de sécurité supplémentaires doivent être mises en place sur ce tronçon de route.\n\n",
        ),
        transition(transition: "ANALYSE\n\n"),
        sbTxt(
          txt:
              "Au moment t = 0 s, la voiture passe devant le motocycliste à l'arrêt. Celui-ci démarre immédiatement avec une accélération constante.\n\n",
        ),
        sbTxt(
          txt:
              "Données de l'enquête :\n- La voiture maintient une vitesse constante de 72 km/h\n- Le motocycliste accélère uniformément à 2,5 m/s²\n- L'accident s'est produit lorsque le motocycliste a rattrapé la voiture\n\n",
        ),
        transition(transition: "QUESTIONS\n\n"),
        sbTxt(
          txt:
              "1) En prenant comme origine des positions le point de départ du motocycliste, établir l'équation horaire de position de la voiture x₁(t).\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir l'équation horaire de position du motocycliste x₂(t) ainsi que son équation horaire de vitesse v₂(t).\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer à quel instant t le motocycliste rattrape la voiture. À quelle distance du point de départ cet événement s'est-il produit ?\n\n",
        ),
        sbTxt(
          txt:
              "4) Déterminer la vitesse du motocycliste au moment où il rattrape la voiture. Comparer cette vitesse avec celle de la voiture.\n\n",
        ),
      ],
    );
  }
}
