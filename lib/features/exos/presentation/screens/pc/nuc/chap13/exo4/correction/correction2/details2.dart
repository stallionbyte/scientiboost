import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(
            math: r"\begin{array}{l} E_l(^2H) = 2,22\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} E_l(^3H) = 8,48\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} E_l(^4He) = 28,30\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} E_l(^1n) = 0\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Énergie de liaison des produits"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_l(\text{produits}) = 28,30 + 0 = 28,30\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Énergie de liaison des réactifs"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_l(\text{réactifs}) = 2,22 + 8,48 = 10,70\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Énergie libérée"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = 28,30 - 10,70 = 17,60\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
