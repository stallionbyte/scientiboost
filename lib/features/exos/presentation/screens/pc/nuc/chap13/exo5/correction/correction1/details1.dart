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
                r"\begin{array}{l} ^6_3Li + ^2_1H \longrightarrow 2 \ ^4_xHe \end{array}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          transition(
            transition: "Selon la loi de la conservation du nombre de charge",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 3 + 1 = 2 \times x \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 4 = 2x \end{array}"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x = \frac{4}{2} = 2 \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
