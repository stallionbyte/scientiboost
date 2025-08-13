import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          transition(transition: "Condition d'impact avec l'eau"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \text{Hauteur de chute} = 45\ \text{m} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Équation horaire de position"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} y(t) = 4{,}9t^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Au moment de l'impact"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} y(t_{chute}) = 45 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Résolution de l'équation"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 4{,}9 \cdot t_{chute}^2 = 45 \\ \Rightarrow t_{chute}^2 = \frac{45}{4{,}9} \\ \Rightarrow t_{chute} = \sqrt{\frac{45}{4{,}9}} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t_{chute}",
              valueTex2SvgMath: r"3{,}03",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
