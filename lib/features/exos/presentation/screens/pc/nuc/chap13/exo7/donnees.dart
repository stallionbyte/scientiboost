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
        tex(math: r"^{235}U : E_l = 1783,9\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r"^{137}Xe : E_l = 1135,8\ \text{MeV}"),
        EspConstants.esp40,
        tex(math: r"^1n : El = 0\ \text{MeV}"),
        EspConstants.esp40,
        tex(
          math:
              r"\begin{array}{l} \text{Énergie libérée par la réaction : } \\ Q = 185\ \text{MeV} \end{array}",
          scale: 3.0,
        ),
        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
        EspConstants.esp40,
        tex(math: r"1\ u = 1,66 \cdot 10^{-27}\ kg"),
        EspConstants.esp40,

        tex(math: r"m_p = 1,00728\ u"),
        EspConstants.esp40,
        tex(math: r"m_n = 1,00866\ u"),
      ],
    );
  }
}
