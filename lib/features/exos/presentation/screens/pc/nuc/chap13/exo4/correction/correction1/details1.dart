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
          transition(
            transition: "Application de la conservation du nombre de masse A",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{initial} = A_{final} \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 2 + 3 = 4 + A_X \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 5 = 4 + A_X \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_X = 5 - 4 = 1 \end{array}"),
          EspConstants.esp40,

          transition(
            transition: "Application de la conservation du numéro atomique Z",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 1 + 1 = 2 + Z_X \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 2 = 2 + Z_X \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_X = 2 - 2 = 0 \end{array}"),
          EspConstants.esp40,

          transition(transition: "Identification de la particule"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} A_X = 1 \text{ et } Z_X = 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow X = ^1_0n \text{ (neutron)} \end{array}",
          ),
        ],
      ),
    );
  }
}
