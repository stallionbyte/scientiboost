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

          tex(math: r"\begin{array}{l} MgCl_2 \cdot 6H_2O \end{array}"),
          EspConstants.esp40,

          transition(transition: "Décomposition de la formule"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 1 \times Mg : 1 \times M(Mg) \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 2 \times Cl : 2 \times M(Cl) \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 6 \times H_2O : 6 \times (2 \times M(H) \\ + M(O)) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Masse molaire totale"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M = M(Mg) \\ + 2 \times M(Cl) \\ + 6 \times [2 \times M(H) + M(O)] \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
