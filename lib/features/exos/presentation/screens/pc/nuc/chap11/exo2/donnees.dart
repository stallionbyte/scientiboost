import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
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
          A: r"235",
          nomNoyau: r"de l'uranium-235",
        ),

        EspConstants.esp20,

        notationSymbolique(
          X: r"Fe",
          Z: r"26",
          A: r"56",
          nomNoyau: r"du fer-56",
        ),

        EspConstants.esp20,
        PhyNucDonneesConstants.uEnMeVC2,
        EspConstants.esp20,

        PhyNucDonneesConstants.masseU235EnU,

        EspConstants.esp20,
        PhyNucDonneesConstants.masseFe56EnU,
        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,
      ],
    );
  }
}
