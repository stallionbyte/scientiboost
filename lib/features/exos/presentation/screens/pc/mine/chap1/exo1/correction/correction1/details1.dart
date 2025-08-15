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
          transition(transition: "Calcul de la masse molaire"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} CuSO_4 \cdot 5H_2O \end{array}"),
          EspConstants.esp40,

          transition(transition: "Décomposition de la formule"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 1 \times Cu : 1 \times M(Cu) \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 1 \times S : 1 \times M(S) \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 4 \times O : 4 \times M(O) \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 5 \times H_2O : 5 \times (2 \times M(H) \\ + M(O)) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Masse molaire totale"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M = M(Cu) \\ + M(S) + 4 \times M(O) \\ + 5 \times [2 \times M(H) + M(O)] \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
