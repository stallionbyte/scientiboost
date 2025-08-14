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
          tex(
            math:
                r"\begin{array}{l} x = x_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ x - x_0 = v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  d = v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Paramètres"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{3,0} = 22,22 \text{m/s} \\ a_3 = -0,123\ \text{m/s}^2 \\ t_3 = 3\ min = 180\ \text{s} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_3 = 22,22 \times 180 + \frac{1}{2} \\ \times (-0,123) \\ \times {180}^2\\ = 2007\ \text{m} \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
