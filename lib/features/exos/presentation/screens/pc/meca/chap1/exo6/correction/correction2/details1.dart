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
          transition(transition: "Au point culminant"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \text{Position : } y_{max} \\ \text{Vitesse : } v'_0 = 0\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Mouvement de chute libre"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y(t') = y_{initial} \\ + v_{initial} \cdot t' + \frac{1}{2} a \cdot t'^2 \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "Avec"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_{initial} = y_{max} \\ v_{initial} = 0 \\ a = -g = -9{,}8\ \text{m/s}^2 \end{array}",
            scale: 5.0,
          ),
          sbTxt(
            txt:
                "(mouvement accéléré vers le bas, l'accélération aide au mouvement donc elle est dirigée vers le bas, l'axe est orienté vers le haut, donc l'accélération est négative)",
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_2(t') = y_{max} + 0 \\ - 4{,}9t'^2 \\ \Rightarrow y_2(t') = y_{max} - 4{,}9t'^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
