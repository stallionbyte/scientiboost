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
        tex(math: r"v_1 = 72\ \text{km/h} = 20\ \text{m/s}"),
        EspConstants.esp40,
        tex(math: r"a_2 = 2{,}5\ \text{m/s}^2"),
        EspConstants.esp40,
        tex(math: r"v_{2,0} = 0\ \text{m/s}"),
        EspConstants.esp40,
        tex(math: r"x_{1,0} = x_{2,0} = 0\ \text{m}"),
        EspConstants.esp40,
        tex(
          math:
              r"\text{À } t = 0\text{, la voiture passe devant le motocycliste}",
        ),
      ],
    );
  }
}
