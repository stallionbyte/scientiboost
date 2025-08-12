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
                r"\begin{array}{l} _{\ 92}^{235}U + _0^1n \longrightarrow _{38}^{\ \ x}Sr \\ + _{\ 54}^{137}Xe + 3_0^1n \end{array}",
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
            math:
                r"\begin{array}{l} 235 + 1 = x + 137 + 3 \times 1 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 236 = x + 137 + 3 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 236 = x + 140 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} x = 236 - 140 = 96 \end{array}"),
        ],
      ),
    );
  }
}
