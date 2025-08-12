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
        tex(math: r"\text{Masse de }^{233}U = 233,03963\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{95}Sr = 94,91936\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{138}Xe = 137,91395\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^2H = 2,01410\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^3He = 3,01603\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse du neutron } m_n = 1,00866\ u"),
        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
        EspConstants.esp40,
        tex(math: r"\mathcal{N}_A = 6,022 \times 10^{23}\ mol^{-1}"),
        EspConstants.esp40,
        tex(math: r"1\ \text{MeV} = 1,602 \times 10^{-13}\ J"),
      ],
    );
  }
}
