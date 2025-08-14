import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "Vitesse dans un MRUV"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t) = v_0 + a \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse initiale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_0 = 35\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          sbTxt(
            txt:
                "(mouvement vers le haut, axe orienté vers le haut, donc vitesse poitive)",
          ),
          EspConstants.esp40,

          transition(transition: "Accélération (mouvement décéléré)"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = -g = -9{,}8\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          sbTxt(
            txt:
                "(mouvement décéléré vers le haut, l'accélération s'oppose au mouvement donc elle est dirigée vers le bas, l'axe est orienté vers le haut, donc l'accélération est négative)",
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_1(t) = 35 + (-9{,}8) \cdot t \\ \Rightarrow v_1(t) = 35 - 9{,}8t \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
