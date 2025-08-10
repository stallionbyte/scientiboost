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
          tex(
            math:
                r"\begin{array}{l} ^{233}_{92}U + ^1_0n \longrightarrow ^{90}_{37}Rb \\ + ^{A}_{Z}X + 2^1_0n \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conservation du nombre de masse A"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{initial} = A_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 233 + 1 = 90 + A_X + 2 \times 1 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 234 = 90 + A_X + 2 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_X = 234 - 90 - 2 = 142 \end{array}"),
          EspConstants.esp40,

          transition(transition: "Conservation du nombre de charge Z"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 92 + 0 = 37 + Z_X + 2 \times 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 92 = 37 + Z_X \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_X = 92 - 37 = 55 \end{array}"),
          EspConstants.esp40,

          transition(transition: "Z = 55 correspond au césium (Cs)"),
        ],
      ),
    );
  }
}
