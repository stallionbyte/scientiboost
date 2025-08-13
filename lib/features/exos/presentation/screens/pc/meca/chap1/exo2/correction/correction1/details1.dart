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
          transition(transition: "Pour un mouvement rectiligne uniforme"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x(t) = x_0 + v \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Le cycliste roule à vitesse constante"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_1 = 45\ \text{km/h} \\ = 45 \times \frac{1000}{3600} \\ = 12{,}5\ \text{m/s} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Position initiale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_0 = 0\ \text{m} \end{array}",
            scale: 1.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(t) = 0 + 12{,}5 \cdot t \\ \Rightarrow x_1(t) = 12{,}5t \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
