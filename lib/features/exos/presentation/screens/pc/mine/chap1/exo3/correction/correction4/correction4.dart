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
            txt: "Concentration molaire des ions chlorure de la solution S' :",
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_i \times V_i = C_f \times V_f \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow [Cl^-]_S \times V_S  =\\ [Cl^-]_{S'} \times V_{S'} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^-]_{S'} = \frac{C_S \times V_S}{V_{S'}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^-]_{S'}  =\\ \frac{3,98 \times 10^{-3} \times 0,040}{0,200} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]_{S'}",
              valueTex2SvgMath: r"7,96 \times 10^{-4}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          tex(math: r"[Cl^-]_{S'} < [Cl^-]_S"),
          sbTxt(txt: "La dilution diminue la concentration des ions chlorure"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
