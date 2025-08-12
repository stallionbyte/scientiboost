import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo7Enonce extends ConsumerWidget {
  const PcNucChap13Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable qualité dans une usine de retraitement de combustible nucléaire usagé. Ton laboratoire analyse les fragments de fission pour identifier et quantifier les isotopes produits. Une analyse spectroscopique a révélé la présence d'un isotope de strontium dont l'énergie de liaison n'est pas répertoriée dans vos bases de données.\n\nTon chef de service te demande de déterminer les caractéristiques nucléaires de cet isotope pour compléter le rapport d'analyse. Tu disposes des données sur la réaction de fission qui l'a produit et tu dois utiliser ces informations pour calculer les propriétés manquantes.\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "La réaction de fission étudiée est : "),
              buildTex2SvgInWidgetSpan(
                math:
                    r"\begin{array}{l} _{\ 92}^{235}U + _0^1n \longrightarrow _{38}^{\ \ x}Sr \\ + _{\ 54}^{137}Xe + 3_0^1n \end{array}",
                scale: 3.0,
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "1) Ecrire l'équation bilan complète de cette fission nucléaire .\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "2) Calculer l'énergie de liaison du noyau de ",
              ),
              buildTex2SvgInWidgetSpan(scale: 0.8, math: r"^{96}Sr"),
              const TextSpan(
                text: " sachant que cette réaction libère 185 MeV.\n\n",
              ),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "3) En déduire la masse du noyau de "),
              buildTex2SvgInWidgetSpan(scale: 0.8, math: r"^{96}Sr"),
              const TextSpan(text: " en unités atomiques (u).\n\n"),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "4) L'échantillon analysé contient "),
              buildTex2SvgInWidgetSpan(math: r"4,8 \times 10^{-3}\ g"),
              const TextSpan(
                text:
                    " de strontium-96. Calculer le nombre de noyaux dans l'échantillon en utilisant la masse d'un noyau.\n\n",
              ),
            ],
          ),
        ),
        Donnees(),
      ],
    );
  }
}
