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
            transition: "Mouvement uniformément accéléré sur plan incliné",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t) = x_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conditions initiales"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_0 = 0\ \text{m} \end{array}",
            scale: 2.0,
          ),
          sbTxt(txt: "(origine en haut de la pente)"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_0 = 0\ \text{m/s} \end{array}",
            scale: 2.0,
          ),
          sbTxt(txt: "(départ du repos)"),
          EspConstants.esp40,

          transition(transition: "Accélération sur le plan incliné"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = 2{,}54\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "En substituant"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 2{,}54 \cdot t^2 \\ \Rightarrow x(t) = 1{,}27t^2 \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
