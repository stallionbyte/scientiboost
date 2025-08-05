import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          X: r"Ba",
          Z: r"56",
          A: r"138",
          nomNoyau: r"du baryum-138",
        ),

        EspConstants.esp20,

        tex(math: r"E_l(_{56}^{138}Ba) = 1176 \ \text{MeV}", scale: 1.0),

        EspConstants.esp20,

        PhyNucData.masseProtonEnU,

        EspConstants.esp20,

        PhyNucData.masseNeutronEnU,

        EspConstants.esp20,

        PhyNucData.uEnKg,

        EspConstants.esp20,

        PhyNucData.cEnMParS,

        EspConstants.esp20,

        PhyNucData.uEnMeVC2,
      ],
    );
  }
}
