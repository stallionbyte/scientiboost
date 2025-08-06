import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo3Enonce extends ConsumerWidget {
  const PcNucChap12Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur(e) en hygiène et sécurité dans une compagnie minière d'extraction d'or. Les autorités sanitaires viennent de détecter des concentrations préoccupantes de radon-222 dans les galeries souterraines de votre mine. Ce gaz radioactif, produit par la désintégration de l'uranium naturellement présent dans les roches, représente un danger majeur pour la santé des mineurs.\n\n"
              "Le directeur de la sécurité te confie une mission urgente : évaluer précisément les risques d'exposition et déterminer les protocoles d'évacuation d'urgence. Les mesures indiquent actuellement une activité de 8,5 x 10⁷ Bq dans la galerie principale.\n\n"
              "Le radon-222 subit une désintégration alpa pour former du polonium. Sa courte période en fait un risque particulièrement critique pour les travailleurs.\n\n",
        ),

        sbTxt(
          txt:
              "1) a) Écris l'équation complète de la désintégration radioactive du radon-222.\n\n"
              "b) Expliques brièvement pourquoi la désintégration alpha du radon-222 présente un danger particulier dans un espace confiné comme une galerie de mine.\n\n",
        ),

        sbTxt(
          txt:
              "2) Détermines au bout de combien de temps l'activité descendra au 1/5 ème de sa valeur initiale.\n\n",
        ),

        sbTxt(
          txt:
              "3) a) Calcules l'activité du radon-222 dans la galerie après 15 jours d'arrêt de l'extraction. Les équipes pourront-elles reprendre le travail sans équipement de protection respiratoire spécial ?\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
