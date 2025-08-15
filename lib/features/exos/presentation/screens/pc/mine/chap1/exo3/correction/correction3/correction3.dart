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

          sbTxt(txt: "Concentration molaire de la solution S' :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_i \times V_i = C_f \times V_f \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow C_S \times V_S = C_{S'} \times V_{S'} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S'} = \frac{C_S \times V_S}{V_{S'}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{S'} = \frac{3,98 \times 10^{-3} \times 0,040}{0,200} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S'}",
              valueTex2SvgMath: r"7,96 \times 10^{-4}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Facteur de dilution :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} F = \frac{C_S}{C_{S'}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} F = \frac{3,98 \times 10^{-3}}{7,96 \times 10^{-4}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"F",

              valueTex2SvgMath: r"5",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Vérification :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} F = \frac{V_{S'}}{V_S} = \frac{200}{40} = 5 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"F",
              valueTex2SvgMath: r"5",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
