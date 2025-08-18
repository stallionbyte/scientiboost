import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

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

          sbTxt(txt: "Masse molaire du sulfate d'aluminium Al₂(SO₄)₃ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} M_{Al_2(SO_4)_3} = \\ 2 \times M_{Al} + 3 \times M_S \\ + 12 \times M_O \end{array}",
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
                r"\begin{array}{l} M_{Al_2(SO_4)_3} = \\ 2 \times 27,0 + 3 \times 32,1 \\ + 12 \times 16,0 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"M_{Al_2(SO_4)_3}",
              valueTex2SvgMath: r"342,3",
              unitTex2SvgMath: r"g/mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse de Al₂(SO₄)₃ dissoute dans S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m = C_{S2} \times M \times V \end{array}",
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
                r"\begin{array}{l} m = 0,120 \times 342,3 \times 0,400 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m",
              valueTex2SvgMath: r"16,4",
              unitTex2SvgMath: r"g",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation de dissolution de Al₂(SO₄)₃ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Al_2(SO_4)_3 \rightarrow \\ 2Al^{3+} + 3SO_4^{2-} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_{S2}}{1} = \frac{[Al^{3+}]_{S2}}{2} = \\ \frac{[SO_4^{2-}]_{S2}}{3} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Al³⁺ dans S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Al^{3+}]_{S2} = 2 \times C_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Al^{3+}]_{S2} = 2 \times 0,120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Al^{3+}]_{S2}",
              valueTex2SvgMath: r"0,240",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions SO₄²⁻ dans S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [SO_4^{2-}]_{S2} = 3 \times C_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}]_{S2} = 3 \times 0,120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{S2}",
              valueTex2SvgMath: r"0,360",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
