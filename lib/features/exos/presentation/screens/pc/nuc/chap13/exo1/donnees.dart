import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp40,

        tex(math: r"\text{Masse neutron } m_n = 1,00866\,u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse }^{235}\text{U} = 235,04393\,u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse }^{94}\text{Kr} = 93,93436\,u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse }^{139}\text{Ba} = 138,90884\,u"),
        EspConstants.esp40,
        tex(math: r" 1\,u = 1,66054 \times 10^{-27}\,kg"),
        EspConstants.esp40,
        tex(math: r" c = 3,00 \times 10^8\,m.s^{-1}"),
        EspConstants.esp40,
        tex(math: r" \mathcal{N}_A = 6,022 \times 10^{23}\,mol^{-1}"),
        EspConstants.esp40,
        tex(math: r" 1\,jour = 86\,400\,s"),
        EspConstants.esp40,
        tex(math: r"1\ MW = 10^6\ W"),
      ],
    );
  }
}
