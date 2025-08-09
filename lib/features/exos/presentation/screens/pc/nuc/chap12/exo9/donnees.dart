import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          X: r"Am",
          Z: r"95",
          A: r"241",
          nomNoyau: "de l'américium-241",
        ),
        EspConstants.esp40,
        PhyNucData.uEnMeVC2,
        EspConstants.esp40,
        PhyNucData.masseParticuleAlphaEnU,
        EspConstants.esp40,

        tex(
          math: r"\lambda (américium) = 1,6 \cdot 10^{-3}\ an^{-1}",
          scale: 1.5,
        ),
      ],
    );
  }
}
