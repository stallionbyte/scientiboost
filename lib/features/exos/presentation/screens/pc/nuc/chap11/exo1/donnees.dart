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
          X: "C",
          Z: r"\ \ 6",
          A: r"14",
          nomNoyau: "du carbone-14",
        ),

        EspConstants.esp20,

        notationSymbolique(
          X: "C",
          Z: r"\ \ 6",
          A: r"12",
          nomNoyau: "du carbone-12",
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnMeVC2,

        EspConstants.esp20,

        PhyNucDonneesConstants.masseC14EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,
      ],
    );
  }
}
