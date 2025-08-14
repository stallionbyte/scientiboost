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
          transition(transition: "Vitesse pendant la descente"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v(t') = v_{initial} + a \cdot t' \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Au point culminant"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_{initial} = 0\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Accélération vers le bas"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = -g = -9{,}8\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          sbTxt(
            txt:
                "(mouvement accéléré vers le bas, l'accélération aide au mouvement donc elle est dirigée vers le bas, l'axe est orienté vers le haut, donc l'accélération est négative)",
          ),
          EspConstants.esp40,

          transition(transition: "D'où"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_2(t') = 0 - 9{,}8t' \\ \Rightarrow v_2(t') = -9{,}8t' \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
