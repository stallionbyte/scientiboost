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
          X: r"Tc",
          Z: r"43",
          A: r"99",
          nomNoyau: r"du technétium-99",
        ),

        EspConstants.esp20,

        buildTex2SvgInRichText(
          math: r"\Delta m(_{43}^{99}Tc) = 8,61 \times 10^{-28} \ \text{kg}",
          scale: 1.0,
        ),

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
