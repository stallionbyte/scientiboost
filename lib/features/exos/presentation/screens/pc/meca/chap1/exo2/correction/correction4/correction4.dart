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

          sbTxt(
            txt: "Distance parcourue pendant la phase 1 qui dure 8 secondes  :",
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_1(t) = 12{,}5 \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ d_1 = x_1(8) = 12{,}5 \times 8 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_1 = 100\ \text{m} \end{array}",
              scale: 1.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Distance parcourue pendant le freinage (phase 2) :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_2(t') = x_{2,0} + v_{2,0} \cdot t' \\ + \frac{1}{2} a_2 \cdot t'^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ x_2(t') - x_{2,0} = v_{2,0} \cdot t' \\ + \frac{1}{2} a_2 \cdot t'^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  d_2 = v_{2,0} \cdot t' \\ + \frac{1}{2} a_2 \cdot t'^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(math: r"t' = t'_{arrêt} = 3,91\ s"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_2 = 12{,}5 \times 3{,}91 \\ + \frac{1}{2} \times (-3{,}2) \times (3{,}91)^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} d_2 = 48{,}88 - 24{,}44 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_2 = 24{,}44\ \text{m} \end{array}",
              scale: 1.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Distance totale parcourue :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_{totale} = d_1 + d_2 \\ d_{totale} = 100 + 24{,}44 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"d_{totale}",
              valueTex2SvgMath: r"124{,}44",
              unitTex2SvgMath: r"m",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Analyse de sécurité :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_{obstacle} = 120\ \text{m} \\ d_{arrêt} = 124{,}44\ \text{m} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} d_{arrêt} > d_{obstacle} \\ 124{,}44 > 120 \end{array}",
              scale: 3.0,
            ),
            color: Colors.red,
          ),

          EspConstants.esp40,

          transition(
            transition: "Il y'a collusion entre le cycliste et l'obstacle",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
