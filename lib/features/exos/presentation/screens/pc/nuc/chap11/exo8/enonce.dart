import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo8Enonce extends ConsumerWidget {
  const PcNucChap11Exo8Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.fontSize * 1.2,
              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "     Vous travaillez pour un organisme de vérification des données nucléaires. Une publication scientifique affirme que pour séparer 3 nucléons du noyau de l'isotope étain-120 il faut 25.5 MeV. Votre mission est de calculer la masse d'un noyau d'étain-120 à partir de cette information. \n \n \n",
              ),

              const TextSpan(
                text:
                    "1) Calculez l'énergie de liaison par nucléon de l'étain-120. \n \n",
              ),

              const TextSpan(text: "2) Calculez en "),

              buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),

              const TextSpan(
                text:
                    " la masse d'un noyau d'étain-120 à partir de l'énergie de liaison par nucléon. \n \n \n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
