import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMecaChap1Exo9Enonce extends ConsumerWidget {
  const PcMecaChap1Exo9Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur minier pour la SOMIKA (Société des Mines de Kalsaka), l'une des principales compagnies aurifères du Burkina Faso. Dans le cadre de l'exploitation de la mine d'or de Youga, près de Zabre, tu dois analyser le système de transport du minerai depuis les galeries souterraines jusqu'à la surface.\n\nLe minerai extrait est acheminé dans des wagonnets qui descendent sur des rails inclinés depuis l'entrée de la mine jusqu'au site de traitement en contrebas. Pour optimiser la productivité et assurer la sécurité des opérations, tu dois caractériser précisément le mouvement de ces wagonnets.\n\nTon expertise déterminera les nouveaux paramètres de fonctionnement qui permettront d'augmenter le rendement de l'extraction tout en respectant les normes de sécurité minière.\n\n",
        ),
        transition(transition: "CONFIGURATION DU SITE\n\n"),
        sbTxt(
          txt:
              "Les wagonnets de minerai descendent sur des rails inclinés à 15° par rapport à l'horizontale. La longueur totale de la pente est de 120 mètres. Les wagonnets partent du repos depuis l'entrée de la mine et accélèrent uniformément.\n\nOn considère que les frottements sont négligeables et que l'accélération du wagonnet sur le plan incliné est a = g sin(15°).\n\n",
        ),
        transition(transition: "ANALYSE DU TRANSPORT\n\n"),
        sbTxt(
          txt:
              "1) Établir les équations horaires de position x(t) et de vitesse v(t) du wagonnet le long du plan incliné, en prenant comme origine le point de départ en haut de la pente.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer le temps nécessaire pour qu'un wagonnet parcoure entièrement les 120 mètres de pente depuis son départ jusqu'au site de traitement.\n\n",
        ),
        sbTxt(
          txt:
              "3) Déterminer la vitesse du wagonnet lorsqu'il arrive en bas du plan incliné. \n\n",
        ),

        Donnees(),
      ],
    );
  }
}
