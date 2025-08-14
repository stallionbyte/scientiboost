import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details3 extends ConsumerStatefulWidget {
  const Details3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details3State();
}

class _Details3State extends ConsumerState<Details3> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "Distance de freinage"),
          EspConstants.esp40,

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
                r"\begin{array}{l} v_{1,0} = 0 \\ a_1 = 0,0926\ \text{m/s}^2 \\ t_1 = 4\ min = 240\ \text{s} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_1 = 0 + \frac{1}{2} \times 0,0926 \\ \times {240}^2\\ = 2666,8\ \text{m} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
