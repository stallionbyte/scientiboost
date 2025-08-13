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
            math:
                r"\begin{array}{l} x(t) = x_{initial} + v \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(
            transition:
                "Position initiale pour la phase 2 qui correspond à la dernière position de la phase 1",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_{initial} = x_1(12) = 324\ \text{m} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(
            transition:
                "Vitesse constante de la phase 2 qui correspond à la vitesse maximale de la phase 1",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v = v_{max} = 54\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Temps de la phase 2 qui commence à t = 12 s"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} t' = t - 12 \end{array}", scale: 2.0),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ x(t) = x_{initial} + v \cdot t' \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"Avec\ \begin{array}{l} t' = t - 12 \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_2(t) = 324 + 54 \cdot (t - 12) \\ = 324 + 54t - 648 \\ = 54t - 324 \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
