import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo2Enonce extends ConsumerWidget {
  const PcNucChap12Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Vous êtes radiophysicien médical et devez préparer une dose d'iode-131 pour traiter un patient atteint d'un cancer de la thyroïde. La dose thérapeutique nécessaire est une activité de 3,7 GBq au moment de l'administration prévue dans 48 heures. \n \n",
        ),
        sbTxt(txt: "1) Calculez la constante radioactive de l'iode-131 \n \n"),
        sbTxt(
          txt:
              "2) Quelle activité initiale devez-vous préparer maintenant pour obtenir l'activité voulue dans 48 heures ? \n \n",
        ),
        sbTxt(
          txt: "3) Calculez la masse d'iode-131 nécessaire initialement. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
