import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo6Enonce extends ConsumerWidget {
  const PcMecaChap1Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es pyrotechnicien pour la Fédération Burkinabè de Football (FBF) et tu prépares le spectacle d'ouverture de la Coupe d'Afrique des Nations U17 qui se déroulera au stade du 4-Août de Ouagadougou. Dans le cadre de ce spectacle, tu dois programmer le tir de fusées éclairantes pour créer un show lumineux spectaculaire.\n\nLors des répétitions, tu dois tester une fusée éclairante qui sera lancée verticalement depuis le centre du terrain. Cette fusée doit exploser au point culminant de sa trajectoire pour maximiser l'effet visuel. Tu dois donc calculer précisément les caractéristiques de son mouvement.\n\nTon expertise déterminera la synchronisation parfaite entre le lancement et l'allumage de la fusée pour offrir aux spectateurs un spectacle inoubliable.\n\n",
        ),
        transition(transition: "CARACTÉRISTIQUES DU TIR\n\n"),
        sbTxt(
          txt:
              "La fusée éclairante est lancée verticalement vers le haut depuis le sol avec une vitesse initiale de 35 m/s. Elle suit un mouvement de projectile soumis uniquement l'accélération | a | = g = 9,8 m/s^2.\n\nRéférentiel : origine au point de lancement au sol, axe vertical orienté vers le haut.\n\n",
        ),
        transition(transition: "QUESTIONS\n\n"),
        sbTxt(
          txt:
              "1) Établir les équations horaires de position y₁(t) et de vitesse v₁(t) de la fusée pendant sa phase de montée (mouvement décéléré).\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir les équations horaires de position y₂(t) et de vitesse v₂(t) de la fusée pendant sa phase de descente (mouvement accéléré). y₂(t) est fonction de la hauteur maximale atteinte y(max). Prendre comme nouvelle origine des temps l'instant où la fusée atteint sa hauteur maximale.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer le temps nécessaire pour que la fusée atteigne sa hauteur maximale depuis le lancement.\n\n",
        ),
        sbTxt(
          txt: "4) Déterminer la hauteur maximale atteinte par la fusée.\n\n",
        ),
      ],
    );
  }
}
