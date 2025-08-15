import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ dans S3 :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Cl⁻ provenant de S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_1(Cl^{-}) = [Cl^{-}]_1 \times V_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_1 = 0,470 \times 0,180 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} n_1 = 0,0846\ mol \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Cl⁻ provenant de S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_2(Cl^{-}) = [Cl^{-}]_2 \times V_2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_2 = 0,100 \times 0,120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} n_2 = 0,0120\ mol \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Volume total de S3 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} V_3 = V_1 + V_2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_3 = 0,180 + 0,120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} V_3 = 0,300\ L \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration totale en Cl⁻ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^{-}]_3 = \frac{n_1 + n_2}{V_3} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^{-}]_3 = \frac{0,0846 + 0,0120}{0,300} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^{-}]_3",
              valueTex2SvgMath: r"0,322",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Mg²⁺ dans S3 :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Mg²⁺ provenant de S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n(Mg^{2+}) = [Mg^{2+}]_1 \times V_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n(Mg^{2+}) = 0,235 \times 0,180 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} n(Mg^{2+}) = 0,0423\ mol \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration en Mg²⁺ dans S3 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Mg^{2+}]_3 = \frac{n(Mg^{2+})}{V_3} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Mg^{2+}]_3 = \frac{0,0423}{0,300} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Mg^{2+}]_3",
              valueTex2SvgMath: r"0,141",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
