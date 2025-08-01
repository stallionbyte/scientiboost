import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        TransitionConstants.donnees,
        EspConstants.esp20,

        notationSymbolique(
          X: r"Co",
          Z: r"27",
          A: r"60",
          nomNoyau: r"du cobalt-60",
        ),

        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "Energie de masse d'un noyau de cobalt-60: 8,9325 . ",
              ),

              buildTex2SvgInWidgetSpan(math: r"10^{-9}", scale: 0.7),

              const TextSpan(text: " J "),
            ],
          ),
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.c,

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnKg,

        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,

        EspConstants.esp20,
      ],
    );
  }
}
