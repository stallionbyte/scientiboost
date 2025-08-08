import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo8Enonce extends ConsumerWidget {
  const PcNucChap12Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes géologue spécialisé(e) en exploration pétrolière dans une compagnie énergétique internationale. Lors d'une mission d'expertise, vous analysez des échantillons de roche sédimentaire contenant de l'uranium-238 (²³⁸U) pour déterminer l'âge des formations géologiques et localiser d'éventuels gisements d'hydrocarbures. L'uranium-238 est un émetteur alpha avec une période radioactive T = 4,47 x 10⁹ ans. \n\nVos analyses révèlent qu'un échantillon de 500 g contenait initialement m₀ = 125 mg d'uranium-238 pur. Pour établir la chronologie géologique de cette formation, vous devez étudier précisément l'évolution de cette masse radioactive sur plusieurs périodes géologiques et calculer l'énergie libérée par les désintégrations. Après 1,34 x 10¹⁰ ans de vieillissement naturel, vous souhaitez déterminer la masse d'uranium disparue. \n \n",
        ),

        sbTxt(
          txt: "1) Écrire l'équation de désintégration de l'uranium-238. \n \n",
        ),

        sbTxt(
          txt: "2) Calculer l'énergie libérée par cette désintégration. \n \n",
        ),

        sbTxt(
          txt:
              "3) Calculer la masse d'uranium-238 disparue au bout de 1,34 x 10¹⁰ ans. \n \n",
        ),

        sbTxt(
          txt:
              "4) Tracer la courbe représentative de la fonction m(t) = f(t). Utiliser les points particuliers t = 0, t = T, t = 2T, t = 3T, t = 4T. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
