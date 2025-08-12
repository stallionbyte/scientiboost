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
                r"\begin{array}{l} ^{235}_{92}U + ^1_0n \longrightarrow ^{140}_{55}Cs \\ + ^A_ZRb + 3^1_0n \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          transition(
            transition: "Application de la conservation du nombre de masse A",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{initial} = A_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 235 + 1 = 140 + A_X + 3 \times 1 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 236 = 140 + A_X + 3 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_X = 236 - 140 - 3 = 93 \end{array}"),
          EspConstants.esp40,

          EspConstants.esp40,

          transition(
            transition: "Application de la conservation du numéro atomique Z",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 92 + 0 = 55 + Z_X + 3 \times 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_X = 92 - 55 = 37 \end{array}"),
        ],
      ),
    );
  }
}
