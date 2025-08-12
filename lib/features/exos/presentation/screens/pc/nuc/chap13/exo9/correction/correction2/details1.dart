import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "Pour la réaction de fusion"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 4^1H \longrightarrow ^4He + 2_1^0e + 2_0^0\nu \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "L'énergie libérée est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = E_l(\text{produits}) - E_l(\text{réactifs}) \end{array}",
          ),
          EspConstants.esp40,

          transition(transition: "Pour les produits"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_l(\text{produits}) = E_l(^4He) \end{array}",
          ),
          EspConstants.esp40,

          transition(transition: "Pour les réactifs"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_l(\text{réactifs}) = 4 \times E_l(^1H) \end{array}",
          ),
          EspConstants.esp40,

          transition(
            transition:
                "Note : Les positrons et neutrinos n'ont pas d'énergie de liaison nucléaire",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = E_l(^4He) \\ - 4 \times E_l(^1H) \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
