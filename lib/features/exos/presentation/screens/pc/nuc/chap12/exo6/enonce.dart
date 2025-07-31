import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap12Exo6Enonce extends ConsumerWidget {
  const PcNucChap12Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "1) En tant qu'ingénieur(e) dans une centrale, vous analysez la chaîne de désintégrations de l'uranium-238. La première étape est une désintégration alpha . La deuxième étape est une désintégration.",
              ),

              buildTex2SvgInWidgetSpan(math: r"\beta ^-"),

              const TextSpan(
                text:
                    "Après avoir écrit les équations de désintétration de ces 2 étapes, identifier le noyau produit à la fin de la deuxième étape ? \n \n",
              ),

              const TextSpan(
                text:
                    "2) En étudiant la famille radioactive de l'uranium-238 (de symbole U), vous constatez qu'elle aboutit, après de nombreuses désintégrations ",
              ),

              buildTex2SvgInWidgetSpan(math: r"\alpha \ \text{et} \ \beta ^-"),

              const TextSpan(
                text:
                    ", à l'isotope stable plomb-206 (de symbole Pb). Combien de désintégrations ",
              ),

              buildTex2SvgInWidgetSpan(math: r"\alpha", scale: 0.5),

              const TextSpan(text: " et combien de désintégrations "),

              buildTex2SvgInWidgetSpan(math: r"\beta ^-"),

              const TextSpan(
                text:
                    "sont nécessaires pour passer de l'uranium-238 au plomb-206 ? \n \n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
