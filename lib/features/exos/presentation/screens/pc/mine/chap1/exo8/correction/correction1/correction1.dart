import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Masse molaire du sulfate de potassium K₂SO₄ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} M_{K_2SO_4} = \\ 2 \times M_K + M_S \\ + 4 \times M_O \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M_{K_2SO_4} = \\ 2 \times 39,1 + 32,1 \\ + 4 \times 16,0 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"M_{K_2SO_4}",
              valueTex2SvgMath: r"174,3",
              unitTex2SvgMath: r"g/mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S1} = \frac{m}{M \times V} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{S1} = \frac{17,4}{174,3 \times 0,500} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S1}",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation de dissolution de K₂SO₄ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} K_2SO_4 \rightarrow 2K^+ + SO_4^{2-} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_{S1}}{1} = \frac{[K^+]_{S1}}{2} = \\ \frac{[SO_4^{2-}]_{S1}}{1} \end{array}",
            scale: 6.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions K⁺ dans S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [K^+]_{S1} = 2 \times C_{S1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [K^+]_{S1} = 2 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[K^+]_{S1}",
              valueTex2SvgMath: r"0,400",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions SO₄²⁻ dans S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [SO_4^{2-}]_{S1} = C_{S1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{S1}",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse molaire du chlorure d'aluminium AlCl₃ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} M_{AlCl_3} = \\ M_{Al} + 3 \times M_{Cl} \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details3(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M_{AlCl_3} = \\ 27,0 + 3 \times 35,5 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"M_{AlCl_3}",
              valueTex2SvgMath: r"133,5",
              unitTex2SvgMath: r"g/mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de S3 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S3} = \frac{m}{M \times V} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{S3} = \frac{26,7}{133,5 \times 0,600} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S3}",
              valueTex2SvgMath: r"0,333",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation de dissolution de AlCl₃ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} AlCl_3 \rightarrow Al^{3+} + 3Cl^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_{S3}}{1} = \frac{[Al^{3+}]_{S3}}{1} = \\ \frac{[Cl^-]_{S3}}{3} \end{array}",
            scale: 6.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Al³⁺ dans S3 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Al^{3+}]_{S3} = C_{S3} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Al^{3+}]_{S3}",
              valueTex2SvgMath: r"0,333",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ dans S3 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^-]_{S3} = 3 \times C_{S3} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [Cl^-]_{S3} = 3 \times 0,333 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]_{S3}",
              valueTex2SvgMath: r"1,00",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
