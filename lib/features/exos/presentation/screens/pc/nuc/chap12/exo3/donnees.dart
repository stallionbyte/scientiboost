import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'package:scientiboost/core/constants/constants.dart';
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
          X: r"U",
          Z: r"92",
          A: r"238",
          nomNoyau: r"de l'uranium-238",
        ),

        EspConstants.esp20,

        notationSymbolique(
          X: r"Th",
          Z: r"90",
          A: r"234",
          nomNoyau: r"du thorium-234",
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.masseU238EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseTh234EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseParticuleAlphaEnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnMeVC2,
      ],
    );
  }
}
