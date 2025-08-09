import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap12Exo9Enonce extends ConsumerWidget {
  const PcNucChap12Exo9Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes ingénieur(e) en contrôle qualité dans une usine de production de détecteurs de fumée ioniques. Ces dispositifs utilisent de l'américium-241 (²⁴¹Am) comme source radioactive alpha pour détecter les particules de fumée. L'américium-241 se désintègre en neptunium (symbole Np) en libérant une énergie de 5,486 MeV par désintégration. \n\nVotre équipe doit valider un nouveau lot de sources radioactives de 850 mg d'américium-241 destinées à équiper 10 000 détecteurs de fumée. Pour certifier la conformité de ces sources et planifier leur cycle de vie industriel, vous devez effectuer une analyse complète des propriétés nucléaires de ce radionucléide.\n \n",
        ),

        sbTxt(
          txt:
              "1) Écrire l'équation de désintégration alpha de l'américium-241. Identifier le noyau père et le noyau fils. \n \n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "2) Calculer la perte de masse lors de cette désintégration en ",
              ),

              buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),

              const TextSpan(text: " puis en u \n \n"),
            ],
          ),
        ),

        sbTxt(
          txt:
              "3) Sachant que la masse du noyau fils est de 237,048168 u, calculer la masse du noyau père. \n \n",
        ),

        sbTxt(
          txt:
              "4) Après combien de temps 70% de la masse initiale d'américium-241 aura disparu ? \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
