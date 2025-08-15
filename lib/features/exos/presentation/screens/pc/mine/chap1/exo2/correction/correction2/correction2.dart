import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Dissociation du chlorure de magnésium :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} MgCl_2 \rightarrow Mg^{2+} + 2Cl^{-} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_1}{1} = \frac{[Mg^{2+}]}{1} \\  = \frac{[Cl^{-}]}{2}   \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Mg²⁺ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[Mg^{2+}]}{1}  = \frac{C_1}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Mg^{2+}] = C_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Mg^{2+}]",
              valueTex2SvgMath: r"0,235",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[Cl^{-}]}{2} = \frac{C_1}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Cl^{-}] = 2 \times C_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [Cl^{-}] = 2 \times 0,235 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^{-}]",
              valueTex2SvgMath: r"0,470",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
