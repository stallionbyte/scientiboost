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

          sbTxt(txt: "Volume total du mélange :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} V_{total} = V_{S'1} + V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_{total} = 200 + 150 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} V_{total} = 350\ mL \end{array}",
              scale: 1.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Cl⁻ provenant de S'1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{Cl^-} = [Cl^-]_{S'1} \times V_{S'1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{Cl^-} = 2,32 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{Cl^-} = 0,464\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^-]_{mél} = \frac{n_{Cl^-}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^-]_{mél} = \frac{0,464}{0,350} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]_{mél}",
              valueTex2SvgMath: r"1,33",
              unitTex2SvgMath: r"mol/L",
              scale: 2.0,
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Fe³⁺ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Fe³⁺ provenant de S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{Fe^{3+}} = [Fe^{3+}]_{S2} \times V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Fe^{3+}} = 0,200 \times 0,150 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{Fe^{3+}} = 0,0300\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Fe^{3+}]_{mél} = \frac{n_{Fe^{3+}}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Fe^{3+}]_{mél} = \frac{0,0300}{0,350} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Fe^{3+}]_{mél}",
              valueTex2SvgMath: r"8,57 \times 10^{-2}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions SO₄²⁻ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de SO₄²⁻ provenant de S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{SO_4^{2-}} = \\ [SO_4^{2-}]_{S2} \times V_{S2} \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-}} = 0,300 \times 0,150 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{SO_4^{2-}} = 0,0450\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [SO_4^{2-}]_{mél} = \frac{n_{SO_4^{2-}}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}]_{mél} = \frac{0,0450}{0,350} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{mél}",
              valueTex2SvgMath: r"1,29 \times 10^{-1}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
