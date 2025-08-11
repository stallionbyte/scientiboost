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
        tex(math: r"m(^2H) = 2,01410\ u"),
        EspConstants.esp40,
        tex(math: r"m(^6Li) = 6,01512\ u"),
        EspConstants.esp40,
        tex(math: r"m(^4He) = 4,00260\ u"),
        EspConstants.esp40,
        tex(math: r"1\ u = 1,66054 \times 10^{-27}\ kg"),
        EspConstants.esp40,
        tex(math: r"c = 3,00 \times 10^8\ m.s^{-1}"),
        EspConstants.esp40,
        tex(math: r"\mathcal{N}_A = 6,022 \times 10^{23}\ mol^{-1}"),
        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
      ],
    );
  }
}
