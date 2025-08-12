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
          transition(transition: "Pour la réaction de fission"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} ^{235}U + ^1n \longrightarrow ^{96}Sr \\ + ^{137}Xe + 3^1n \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "L'énergie libérée est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = E_l(\text{produits}) \\ - E_l(\text{réactifs}) \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          TransitionConstants.dou,
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = [E_l(^{96}Sr) + E_l(^{137}Xe) \\ + 3 \times E_l(^1n)] \\ - [E_l(^{235}U) + E_l(^1n)] \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ [E_l(^{96}Sr) + E_l(^{137}Xe) \\ + 3 \times E_l(^1n)] \\ - [E_l(^{235}U) + E_l(^1n)] = Q \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_l(^{96}Sr) + E_l(^{137}Xe) \\ + 3 \times E_l(^1n) = Q \\ + [E_l(^{235}U) + E_l(^1n)] \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_l(^{96}Sr)  = Q + [E_l(^{235}U) \\ + E_l(^1n)] - [E_l(^{137}Xe) \\ + 3 \times E_l(^1n)] \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
