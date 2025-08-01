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
          X: r"Ra",
          Z: r"\ 88",
          A: r"226",
          nomNoyau: "du radium-226",
        ),

        EspConstants.esp20,

        PhyNucDonneesConstants.masseRa226EnU,

        EspConstants.esp20,

        PhyNucDonneesConstants.mp,

        EspConstants.esp20,

        PhyNucDonneesConstants.mn,

        EspConstants.esp20,

        PhyNucDonneesConstants.uEnMeVC2,

        EspConstants.esp20,
      ],
    );
  }
}
