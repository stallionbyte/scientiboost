import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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

        PhyNucData.cEnMParS,

        EspConstants.esp20,

        PhyNucData.masseElectronEnU,

        EspConstants.esp20,

        PhyNucData.masseProtonEnU,

        EspConstants.esp20,

        PhyNucData.masseNeutronEnU,

        EspConstants.esp20,

        PhyNucData.uEnKg,
      ],
    );
  }
}
