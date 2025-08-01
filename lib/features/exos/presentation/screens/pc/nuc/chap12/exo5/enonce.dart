import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap12Exo5Enonce extends ConsumerWidget {
  const PcNucChap12Exo5Enonce({super.key});

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
                    "Vous préparez un traitement à l'yttrium-90 pour un patient atteint de métastases hépatiques. La dose prescrite est de 2 GBq à injecter. L'yttrium-90 est radioactif ",
              ),

              buildTex2SvgInWidgetSpan(math: r"\beta ^{-}"),
            ],
          ),
        ),

        EspConstants.esp20,

        sbTxt(
          txt:
              "1) Ecrire l'équation de la désintégration de l'yttrium-90. le symbole chimique du noyau fils sera noté X \n \n",
        ),

        sbTxt(
          txt:
              "2) Quelle sera l'activité résiduelle après 5 jours de traitement ? \n \n",
        ),

        sbTxt(
          txt:
              "3) Calculez le nombre total de désintégrations pendant les 10 premiers jours. \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
