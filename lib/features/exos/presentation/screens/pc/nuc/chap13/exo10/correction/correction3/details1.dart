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
                r"\begin{array}{l} ^2H + ^2H \longrightarrow ^3He + ^1n \end{array}",
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
                r"\begin{array}{l} \Delta m = [2 \times m(^2H)] \\ - [m(^3He) + m(^1n)] \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
