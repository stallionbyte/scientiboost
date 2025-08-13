import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Distance parcourue pendant la phase 1 (0 à 12 s) :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_1(t) = 2{,}25 \times (t)^2 \end{array}",
            scale: 3.0,
          ),

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ d_1 = x_1(12) = 2{,}25 \times (12)^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_1 = 324\ \text{m} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Distance parcourue pendant la phase 2 (12 s à 30 s) :"),

          EspConstants.esp40,

          transition(transition: "Durée de la phase 2 à vitesse constante"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta t = 30 - 12 = 18\ \text{s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_2(t) = v \times (t) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ d_2 = x_2 = v \times \Delta t \\ = 54 \times 18 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_2 = 972\ \text{m} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Distance totale parcourue en 30 secondes :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_{totale} = d_1 + d_2 \\ = 324 + 972 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"d_{totale}",
              valueTex2SvgMath: r"1296",
              unitTex2SvgMath: r"m",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
