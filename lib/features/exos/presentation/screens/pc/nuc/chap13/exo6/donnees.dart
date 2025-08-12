import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
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
        tex(math: r"P = 1200\ MW", scale: 1.0),
        EspConstants.esp40,
        tex(math: r"m(^{235}U) = 235,04393\ u"),
        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
        EspConstants.esp40,
        tex(math: r"1\ u = 1,66 \times 10^{-27}\ kg"),
        EspConstants.esp40,
        tex(math: r"\mathcal{N}_A = 6,022 \times 10^{23}\ mol^{-1}"),
        EspConstants.esp40,
        tex(math: r"1\ jour = 86\ 400\ s", scale: 1.0),
        EspConstants.esp40,
        tex(math: r"1\ MW = 10^6\ W", scale: 1.0),
      ],
    );
  }
}
