import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo6Enonce extends ConsumerWidget {
  const PcNucChap11Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu fais partie de l’équipe d’inspection en sûreté nucléaire dans une centrale. On te demande d’évaluer la stabilité d’un isotope de néodyme, le néodyme-144, présent en faible quantité dans certains combustibles usés. L’énergie de liaison par nucléon du noyau de néodyme-144 est de 8,25 MeV.\n \n",
        ),

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "1) Calculer la masse d'un noyau de néodyme-144 en ",
              ),

              buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
            ],
          ),
        ),

        sbTxt(txt: "\n \n 2) Calculer son défaut de masse en u \n \n"),
        Donnees(),
      ],
    );
  }
}
