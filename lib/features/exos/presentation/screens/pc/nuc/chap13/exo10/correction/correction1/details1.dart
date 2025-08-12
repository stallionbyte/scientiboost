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
                r"\begin{array}{l} ^{233}U + ^1n \longrightarrow ^{95}Sr \\ + ^{138}Xe + 2^1n \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "La perte de masse est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = m_{réactifs} - m_{produits} \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = [m(^{233}U) + m(^1n)] \\ - [m(^{95}Sr) + m(^{138}Xe) + 2 \times m(^1n)] \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
