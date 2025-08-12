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
        tex(math: r"\text{Masse de }^{235}U = 235,04393\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{140}Cs = 139,90543\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{93}Rb = 92,92204\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{2}H = 2,01410\ u"),
        EspConstants.esp40,
        tex(math: r"\text{Masse de }^{3}H = 3,01604\ u"),
        EspConstants.esp40,
        tex(math: r"m_n = 1,00866\ u"),
        EspConstants.esp40,
        tex(
          math:
              r"\begin{array}{l}\text{Énergie de liaison par nucléon de } \\ ^2H : 1,11\ \text{MeV/nucléon} \end{array}",
          scale: 3.0,
        ),
        EspConstants.esp40,
        tex(
          math:
              r"\begin{array}{l} \text{Énergie de liaison par nucléon de } \\ ^3H : 2,83\ \text{MeV/nucléon} \end{array}",
          scale: 3.0,
        ),
        EspConstants.esp40,
        tex(
          math:
              r" \begin{array}{l} \text{Énergie de liaison par nucléon de } \\ ^4He : 7,07\ \text{MeV/nucléon} \end{array}",
          scale: 3.0,
        ),
        EspConstants.esp40,

        sbTxt(
          txt: "Énergie de liaison par nucléon d'un neutron : 0 MeV/nucléon",
        ),

        EspConstants.esp40,
        tex(math: r"1\ u = 931,5\ \text{MeV}/c^2"),
      ],
    );
  }
}
