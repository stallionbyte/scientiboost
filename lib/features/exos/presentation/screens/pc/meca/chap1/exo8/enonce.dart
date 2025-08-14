import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class PcMecaChap1Exo8Enonce extends ConsumerWidget {
  const PcMecaChap1Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur spatial pour l'Agence Spatiale Africaine (ASA) et tu travailles sur le projet BURKINASAT-2, le deuxième satellite de télécommunications du Burkina Faso. Ce satellite doit être placé en orbite géostationnaire pour assurer la couverture Internet haut débit dans tout le territoire national, notamment dans les zones rurales.\n\nTon équipe doit finaliser les calculs orbitaux avant le lancement. Le gouvernement burkinabè compte sur ce satellite pour développer l'économie numérique et réduire la fracture numérique entre les villes et les campagnes.\n\nTon expertise déterminera les paramètres de mise en orbite qui garantiront le succès de cette mission stratégique pour le développement technologique du pays.\n\n",
        ),
        transition(transition: "PARAMÈTRES ORBITAUX\n\n"),
        sbTxt(
          txt:
              "Le satellite BURKINASAT-2 sera placé en orbite circulaire à une altitude de 35 786 km au-dessus de la surface terrestre. À cette altitude, il effectuera une révolution complète autour de la Terre en exactement 24 heures (orbite géostationnaire).\n\nPour les calculs, on considère que le satellite est un point matériel en mouvement circulaire uniforme autour du centre de la Terre.\n\n",
        ),
        transition(transition: "CALCULS ORBITAUX\n\n"),
        sbTxt(
          txt:
              "1) Claculer le rayon orbitale en tenant compte du rayon de la Terre.\n\n",
        ),
        sbTxt(
          txt:
              "2) Établir l'équation horaire de la position angulaire θ(t) du satellite sur son orbite, en prenant θ₀ = 0 rad à t = 0.\n\n",
        ),
        sbTxt(txt: "3) Calculer la vitesse linéaire v(t) du satellite.\n\n"),
        sbTxt(
          txt:
              "4) Calculer l'accélération centripète du satellite sur son orbite.\n\n",
        ),
      ],
    );
  }
}
