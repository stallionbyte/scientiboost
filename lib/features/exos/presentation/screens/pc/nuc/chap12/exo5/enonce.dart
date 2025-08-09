import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo5Enonce extends ConsumerWidget {
  const PcNucChap12Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes ingénieur(e) spécialisé(e) en gestion des déchets radioactifs dans un centre de stockage nucléaire. Votre équipe doit évaluer l'évolution temporelle d'un conteneur de déchets contenant du plutonium-239 (²³⁹Pu), un émetteur alpha avec une période de désintégration T = 24 100 ans. \n\n Le conteneur contient initialement m₀ = 5,2 kg de plutonium-239 pur. Les normes de sécurité imposent que le conteneur ne soit transféré vers un stockage moins sécurisé que lorsque la masse de ²³⁹Pu aura diminué jusqu'à représenter seulement 17% de la masse initiale. Vous devez déterminer quand cette condition sera remplie et évaluer l'activité résiduelle à ce moment. \n \n",
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de désintégration alpha du plutonium-239.\n \n",
        ),

        sbTxt(
          txt: "2) Calculer l'énergie libérée par cette désintégration.\n \n",
        ),

        sbTxt(txt: "3) a) Après combien de temps on aura m/m₀ = 0,17 ? \n \n "),

        sbTxt(
          txt: "b) Calculer l'activité de l'échantillon à ce moment. \n \n",
        ),

        sbTxt(
          txt:
              "4) Calculer la masse restante dans l'échantillon après 48200ans. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
