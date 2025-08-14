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
          transition(transition: "Formule de la hauteur maximale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v^2 - v_0^2 =  2ay \end{array}",
            scale: 3.0,
          ),
          sbTxt(
            txt:
                "(mouvement décéléré vers le haut, l'accélération s'oppose au mouvement donc elle est dirigée vers le bas, l'axe est orienté vers le haut, donc l'accélération est négative)",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v^2 - v_0^2 =  - 2gy \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} - 2gy  = v^2 - v_0^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l}  2gy  = - v^2 + v_0^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          transition(transition: "Au point culminant : v = 0"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l}  2gy_{max}  =  v_0^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Résolution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 2gy_{max} = v_0^2 \\ \Rightarrow \ y_{max} = \frac{v_0^2}{2g} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_{max} = \frac{35^2}{2 \times 9{,}8} \\ = \frac{1225}{19{,}6} \\ = 62{,}5\ \text{m} \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
