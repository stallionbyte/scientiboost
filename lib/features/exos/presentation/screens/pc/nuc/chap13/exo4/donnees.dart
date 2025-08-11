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

        tex(math: r"E_l(^2H) = 2,22\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r" E_l(^3H) = 8,48\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r" E_l(^4He) = 28,30\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r" E_l(^1n) = 0\ \text{MeV}"),

        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
      ],
    );
  }
}
