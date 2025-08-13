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
          transition(transition: "Pour un mouvement uniformément varié"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t') = x_0 + v_0 \cdot t' \\ + \frac{1}{2} a \cdot t'^2 \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "Nouvelle origine des temps : t' = t - 8"),
          EspConstants.esp40,

          transition(transition: "Position initiale pour cette phase"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_{2,0} = x_1(8) = 100\ \text{m} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse initiale du freinage"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_{2,0} = 12{,}5\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Décélération constante"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a_2 = -3{,}2\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "En substituant dans l'équation"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_2(t') = 100 + 12{,}5 \cdot t' \\ + \frac{1}{2} \cdot (-3{,}2) \cdot t'^2 \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
