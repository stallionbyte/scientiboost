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
          transition(transition: "Mouvement uniformément décéléré"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t') = x_0 + v_0 \cdot t' \\ + \frac{1}{2} a \cdot t'^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Nouvelle origine des temps"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t' = 0 \\ \text{au début de la décélération} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conditions initiales pour cette phase"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_{3,0} : \text{position au début} \\ \text{de la décélération} \\ \text{à déterminer} \\ \text{plustard} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{3,0} = 22{,}22\ \text{m/s} \\ \text{(vitesse de croisière)} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a_3  = -0{,}123\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_3(t') = x_{3,0} + 22{,}22 \cdot t' \\ + \frac{1}{2} \cdot (-0{,}123) \cdot t'^2 \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
