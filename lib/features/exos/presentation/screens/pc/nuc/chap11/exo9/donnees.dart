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
          X: r"O",
          Z: r"8",
          A: r"16",
          nomNoyau: r"de l'oxygène-16",
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnMeVC2,

        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseO16EnU,
      ],
    );
  }
}
