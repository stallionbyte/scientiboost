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
          transition(transition: "Mouvement rectiligne uniforme"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x(t) = x_0 + v \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Le camion roule à vitesse constante"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_1 = 90\ \text{km/h} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conversion en m/s"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_1 = 90\ \text{km/h} \end{array}",
            scale: 3.0,
          ),

          tex(
            math: r"\begin{array}{l} v_1 = 90\ \frac{km}{h} \end{array}",
            scale: 3.0,
          ),

          tex(
            math:
                r"\begin{array}{l} v_1 = 90 \times \frac{1000\ m}{3600\ s} \\ = 25\ \text{m/s} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Position initiale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_0 = 0\ \text{m} \end{array}",
            scale: 1.5,
          ),
          sbTxt(txt: "(origine au début de l'observation)"),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(t) = 0 + 25t \\ \Rightarrow x_1(t) = 25t \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
