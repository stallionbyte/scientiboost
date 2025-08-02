import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo1Enonce extends ConsumerWidget {
  const PcNucChap11Exo1Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes ingénieur(e) en physique nucléaire dans une centrale. Le laboratoire de contrôle qualité vient de recevoir un échantillon d'uranium-235 provenant d'un nouveau fournisseur. Pour valider la conformité de cet échantillon et s'assurer de sa pureté, vous devez effectuer une analyse complète de ses propriétés nucléaires. Le spectromètre de masse du laboratoire a mesuré l'énergie de masse d'un atome d'uranium-235 : E₀ = 3,515 x 10⁻⁸ J \n \n",
        ),

        sbTxt(
          txt:
              "1) À partir de l'énergie de masse mesurée, calculer la masse totale de l'atome d'uranium-235 \n \n",
        ),

        sbTxt(
          txt: "2) Calculer la masse du noyau de l'atome d'uranium-235 \n \n",
        ),

        sbTxt(txt: "3) Comparer ces deux(2) masses et conclure \n \n"),

        sbTxt(
          txt: "4) Calculer le défaut de masse d'un noyau d'uranium-235  \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
