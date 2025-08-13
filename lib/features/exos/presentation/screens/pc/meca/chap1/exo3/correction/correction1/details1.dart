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
          transition(
            transition: "Pour un mouvement rectiligne uniformément varié",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t) = x_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "La voiture part de l'arrêt"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_0 = 0\ \text{m} \\ v_0 = 0\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Accélération constante"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = 4{,}5\ \text{m/s}^2 \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          transition(transition: "En substituant dans l'équation"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 4{,}5 \cdot t^2 \\ \Rightarrow x_1(t) = 2{,}25t^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
