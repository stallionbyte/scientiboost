import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,

        EspConstants.esp40,

        notationSymbolique(
          X: r"Fe",
          Z: r"26",
          A: r"56",
          nomNoyau: r"du fer-56",
        ),

        EspConstants.esp40,

        PhyNucData.masseProtonEnU,

        EspConstants.esp40,

        PhyNucData.masseNeutronEnU,

        EspConstants.esp40,

        PhyNucData.uEnMeVC2,

        EspConstants.esp40,
      ],
    );
  }
}
