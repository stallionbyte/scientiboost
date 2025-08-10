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
                r"\begin{array}{l} ^{235}_{92}\text{U} + ^{1}_{0}\text{n} \longrightarrow ^{A}_{36}\text{Kr} \\ + ^{139}_{Z}\text{Ba} + 3^{1}_{0}\text{n} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(
            transition: "Selon la loi de conservation du nombre de masse",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{initial} = A_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} A_{initial} = 235 + 1 = 236 \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} A_{final} = A + 139 + 3 \times 1 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{final} = A + 142 \end{array}"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \Rightarrow A + 142 = 236 \  \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \Rightarrow A = 236 - 142 \  \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} \Rightarrow A = 94 \  \end{array}"),
          EspConstants.esp40,

          transition(
            transition: "Selon la loi de conservation du nombre de charge",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = 92 + 0 = 92 \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Z_{final} = 36 + Z + 3 \times 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{final} = 36 + Z \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} \Rightarrow 36 + Z = 92 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} \Rightarrow Z = 92 -36 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} \Rightarrow Z = 56 \end{array}"),
        ],
      ),
    );
  }
}
