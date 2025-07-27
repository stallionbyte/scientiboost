import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'donnees.dart';

class PcNucChap12Exo1Enonce extends ConsumerWidget {
  const PcNucChap12Exo1Enonce({super.key});

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
                    "Vous êtes archéologue et venez de découvrir une momie dans une tombe égyptienne. Pour dater cette découverte, vous prélevez un échantillon de tissu qui présente une activité en carbone-14 de 8,2 désintégrations par minute. Un tissu vivant présente une activité en carbone-14 de 13,6 désintégrations par minute. \n \n",
              ),

              const TextSpan(
                text: "1) a) Calculez l'activité initiale du carbone-14 \n \n",
              ),

              const TextSpan(
                text:
                    "b) Calculez l'activité du carbone-14 au moment du prélèvement \n \n",
              ),

              const TextSpan(text: "2) Calculez la constante radioactive "),

              buildTex2SvgInWidgetSpan(
                math: PhyNucTex2SvgMathContants.lambda,
                scale: 0.7,
              ),

              const TextSpan(text: " du carbone-14 \n \n"),

              const TextSpan(text: "3) Calculez l'âge de la momie"),
            ],
          ),
        ),
        const SizedBox(height: 30),
        Donnees(),
      ],
    );
  }
}
