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
          transition(transition: "Mouvement uniformément accéléré"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t) = x_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conditions initiales"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_0 = 0\ \text{m} \\ \text{(départ de Koudougou)} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_0 = 0\ \text{m/s} \\ \text{(départ du repos)} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 0{,}0926 \cdot t^2 \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
