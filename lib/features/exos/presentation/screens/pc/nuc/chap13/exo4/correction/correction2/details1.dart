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
                r"\begin{array}{l} ^2H + ^3H \longrightarrow ^4He + ^1n \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          transition(
            transition:
                "L'énergie libérée est la différence entre les énergies de liaison finales et initiales",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = \sum E_l(\text{produits}) \\ - \sum E_l(\text{réactifs}) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Pour les produits"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(\text{produits}) = E_l(^4He) \\ + E_l(^1n) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Pour les réactifs"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(\text{réactifs}) = E_l(^2H) \\ + E_l(^3H) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = E_l(^4He) + E_l(^1n) \\ - [E_l(^2H) + E_l(^3H)] \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
