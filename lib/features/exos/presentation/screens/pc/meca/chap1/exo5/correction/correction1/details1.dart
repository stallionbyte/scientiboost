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
            transition:
                "Un mouvement de chute libre est un mouvement rectiligne uniformément accéléré",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y(t) = y_0 + v_0 \cdot t \\ + \frac{1}{2} g \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conditions initiales"),
          EspConstants.esp40,

          tex(math: r"y_0 = 0\ \text{m}", scale: 1.5),
          sbTxt(txt: "(origine au point de détachement)"),
          EspConstants.esp40,

          tex(math: r"v_0 = 0\ \text{m/s}", scale: 1.5),
          sbTxt(txt: "(part du repos)"),
          EspConstants.esp40,

          transition(transition: "Accélération"),
          EspConstants.esp40,

          tex(math: r" g = 9{,}8\ \text{m/s}^2 ", scale: 2.0),
          EspConstants.esp40,

          transition(transition: "En substituant"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 9{,}8 \cdot t^2 \\ \Rightarrow y(t) = 4{,}9t^2 \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
