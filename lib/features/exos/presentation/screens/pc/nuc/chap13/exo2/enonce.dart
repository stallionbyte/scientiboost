import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap13Exo2Enonce extends ConsumerWidget {
  const PcNucChap13Exo2Enonce({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes physicien(ne) nucléaire pour une entreprise spécialisée dans la conception de réacteurs de recherche. On vous confie l'analyse d'une réaction de fission de l'uranium-233 utilisée pour produire des isotopes médicaux. Lors d'une expérience, un noyau de uranium-233 absorbe un neutron et se scinde en deux fragments, l’un identifié comme le rubidium-90 et l’autre noté X (inconnu), en libérant également deux neutrons. Vous devez identifier ce noyau X, calculer l’énergie libérée à partir des énergies de liaison et estimer la puissance produite pour une certaine quantité de matière. Vos résultats serviront à valider la faisabilité du projet de réacteur.\n\n",
        ),
        sbTxt(
          txt:
              "1) Ecrire l'équation de la réaction en déterminant le noyau X manquant.\n\n",
        ),
        sbTxt(
          txt:
              "2) En utilisant les énergies de liaison par nucléon fournies, calculer l'énergie libérée par une seule réaction.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer l'énergie totale libérée par 1 mole de noyaux d'uranium-233 subissant cette fission.\n\n",
        ),
        sbTxt(
          txt:
              "4) En déduire la puissance moyenne développée si la totalité de cette énergie est libérée en 1 heure.\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
