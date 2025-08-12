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
        tex(math: r"E_l(^1H) = 0\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r"E_l(^4He) = 28,30\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r"M_{soleil} = 1,99 \times 10^{30}\ kg"),
        EspConstants.esp40,

        tex(math: r"c = 3,00 \times 10^8\ m.s^{-1}"),
        EspConstants.esp40,
        tex(math: r"1\ \text{MeV} = 1,602 \times 10^{-13}\ J"),
        EspConstants.esp40,
        tex(math: r"1\ \text{an} = 3,156 \times 10^7\ s"),
      ],
    );
  }
}
