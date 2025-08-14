import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "Vitesse dans un MRUV"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t') = v_0 + a \cdot t' \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse initiale de cette phase"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_{3,0} = 22{,}22\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Décélération"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a_3 = -0{,}123\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_3(t') = 22{,}22 + (-0{,}123) \cdot t' \\ \Rightarrow v_3(t') = 22{,}22 - 0{,}123t' \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
