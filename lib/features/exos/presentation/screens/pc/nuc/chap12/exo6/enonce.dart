import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo6Enonce extends ConsumerWidget {
  const PcNucChap12Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes chercheur(se) en imagerie médicale dans un laboratoire de recherche pharmaceutique. Votre équipe développe un nouveau traceur radiopharmaceutique à base de carbone-11 (¹¹C) pour étudier le métabolisme cérébral. Le carbone-11 est un émetteur β⁺ avec une constante radioactive λ = 5,63 x 10⁻⁴ min⁻¹. \n\n Votre synthétiseur automatique vient de produire un lot de traceurs contenant N₀ = 4,8 x 10¹⁴ noyaux de ¹¹C. Pour valider le protocole expérimental, vous devez déterminer à quel moment exactement 2/5 des noyaux initiaux auront disparu par désintégration, car c'est à ce moment critique que l'activité sera optimale pour les acquisitions d'images TEP sur les modèles animaux. \n \n",
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de désintégration β⁺ du carbone-11. Identifier le noyau père et le noyau fils. Expliquer brièvement le processus physique qui se produit dans le noyau lors de cette désintégration \n \n",
        ),

        sbTxt(
          txt: "2) Calculer l'énergie libérée par cette désintégration \n \n",
        ),

        sbTxt(
          txt:
              "3) Après combien de temps 2/5 des noyaux initiaux auront disparu ? \n \n   ",
        ),

        sbTxt(
          txt: "4) Calculer l'activité de l'échantillon à ce moment. \n \n",
        ),

        sbTxt(
          txt:
              "5) A quel moment l'activité aura 1/8 ème de sa valeur initiale ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
