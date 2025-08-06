import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo2Enonce extends ConsumerWidget {
  const PcNucChap12Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur(e) en sûreté nucléaire dans une centrale électrique. Suite à un arrêt programmé pour maintenance, tu dois évaluer l'évolution de la radioactivité des produits de fission accumulés dans le réacteur. Le directeur de la centrale te confie une mission critique : analyser la décroissance de l'iode-131, un des produits de fission les plus préoccupants. \n \n",
        ),

        sbTxt(
          txt:
              "L'iode-131 est particulièrement surveillé car il se concentre dans la thyroïde et présente des risques sanitaires. Ce radioisotope subit une désintégration β⁻ pour se transformer en xénon-131 stable. Les mesures indiquent actuellement une activité de 2,5 x 10⁹ Bq dans la zone de stockage. \n \n",
        ),

        sbTxt(
          txt:
              "   1) Écris l'équation complète de la désintégration radioactive de l'iode-131. \n \n",
        ),

        sbTxt(
          txt: "2) Calcule la constante radioactive λ de l'iode-131. \n \n",
        ),

        sbTxt(
          txt:
              "3) Détermine au bout de combien de temps l'activité descendra en dessous du seuil de sécurité. \n \n",
        ),

        sbTxt(
          txt:
              "4) Au bout de combien de temps l'activité descendra à 10% de sa valeur initiale ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
