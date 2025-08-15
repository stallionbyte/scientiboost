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

          sbTxt(txt: "Dissociation de HCl dans l'eau :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} HCl + H_2O \rightarrow \\ H_3O^+ + Cl^- \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_S}{1} = \frac{[H_3O^+]}{1} \\ = \frac{[Cl^-]}{1}  \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions H₃O⁺ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [H_3O^+] = 10^{-pH} \end{array}",
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(math: r"\begin{array}{l} [H_3O^+] = 10^{-2,4} \end{array}"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"3,98 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l}  \frac{[Cl^-]}{1} = \frac{C_S}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l}  [Cl^-] = C_S  \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]",
              valueTex2SvgMath: r"3,98 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions OH⁻ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+] \times [OH^-] = K_e = 10^{-14} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{[H_3O^+]} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{3,98 \times 10^{-3}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"2,51 \times 10^{-12}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Comparaison :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[OH^-]}{ [H_3O^+]}  = \frac{2,51 \times 10^{-12}}{3,98 \times 10^{-3}} \end{array}",
            scale: 3.0,
          ),

          tex(
            math:
                r"\begin{array}{l} \frac{[OH^-]}{ [H_3O^+]}  = 6,3 \cdot 10^{-10} \leq 10^{-4} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(math: r"[H_3O^+]\ >>\ [OH^-]\"),
          tex(
            math:
                r"\begin{array}{l} H_3O^+ \text{est ultra-majoritaire}  \\ \text{devant} \ OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
