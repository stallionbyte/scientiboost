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
          transition(transition: "Condition au point culminant"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v = 0\ \text{m/s} \\ \text{(arrêt momentané)} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Équation horaire de vitesse"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_1(t) = 35 - 9{,}8t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Au temps t_max"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_1(t_{max}) = 0 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Résolution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 35 - 9{,}8 \cdot t_{max} = 0 \\ \Rightarrow 9{,}8 \cdot t_{max} = 35 \\ \Rightarrow t_{max} = \frac{35}{9{,}8} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
