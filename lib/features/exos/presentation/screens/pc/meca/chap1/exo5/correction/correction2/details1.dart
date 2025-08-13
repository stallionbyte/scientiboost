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
          transition(transition: "Vitesse dans un MRUV"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t) = v_0 + a \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Pour la chute libre"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = g = 9{,}8\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse initiale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_0 = 0\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire de vitesse"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v(t) = 0 + 9{,}8 \cdot t \\ \Rightarrow v(t) = 9{,}8t \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
