import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo7Enonce extends ConsumerWidget {
  const PcNucChap12Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes agronome spécialisé(e) en agriculture nucléaire dans un institut de recherche agricole. Votre laboratoire utilise un isotope du phosphore (symbole P)  comme traceur radioactif pour étudier l'absorption des nutriments par les plantes. Cet isotope est un émetteur β⁻, produisant le soufre-32, avec une constante radioactive λ = 4,86 x 10⁻⁷ s⁻¹. \n\nVous préparez une expérience sur la nutrition phosphatée du blé qui nécessite plusieurs phases d'observation. Votre solution nutritive contient initialement N₀ = 2,4 x 10¹⁶ noyaux de phosphore. Pour planifier correctement vos mesures et respecter les protocoles de sécurité radiologique, vous devez calculer précisément l'évolution temporelle de cet échantillon. \n \n",
        ),

        sbTxt(
          txt: "1) Écrire l'équation de désintégration β⁻ du phosphore.\n \n",
        ),

        sbTxt(txt: "2) Calculer la période radioactive T du phosphore. \n \n"),

        sbTxt(txt: "3) Après combien de temps on aura N/N₀ = 0,23 ? \n \n"),

        sbTxt(
          txt:
              "4) Après combien de temps il ne restera que 3/4 des noyaux initiaux ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
