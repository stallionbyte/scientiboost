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
            transition: "Mouvement uniformément décéléré vers le haut",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y(t) = y_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "Conditions initiales"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} y_0 = 0\ \text{m} \end{array}",
            scale: 1.5,
          ),
          sbTxt(txt: "(lancement depuis le sol)"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_0 = 35\ \text{m/s} \end{array}",
            scale: 1.5,
          ),
          sbTxt(
            txt:
                "(mouvement vers le haut, axe orienté vers le haut, donc vitesse poitive)",
          ),
          EspConstants.esp40,

          transition(transition: "Accélération"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} a = -g \\ a = -9{,}8\ \text{m/s}^2 \end{array}",
            scale: 5.0,
          ),
          sbTxt(
            txt:
                "(mouvement décéléré vers le haut, l'accélération s'oppose au mouvement donc elle est dirigée vers le bas, l'axe est orienté vers le haut, donc l'accélération est négative)",
          ),
          EspConstants.esp40,

          transition(transition: "En substituant"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_1(t) = 0 + 35t \\ + \frac{1}{2} \times (-9{,}8) \times t^2 \\ \Rightarrow y_1(t) = 35t - 4{,}9t^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
