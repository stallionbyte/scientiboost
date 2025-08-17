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

          sbTxt(txt: "Masse molaire du sulfate de fer III :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} M_{Fe_2(SO_4)_3} = \\ 2 \times M_{Fe} + 3 \times M_S \\ + 12 \times M_O \end{array}",
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
                r"\begin{array}{l} M_{Fe_2(SO_4)_3} = \\ 2 \times 55,8 + 3 \times 32,1 \\ + 12 \times 16,0 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"M_{Fe_2(SO_4)_3}",
              valueTex2SvgMath: r"399,9",
              unitTex2SvgMath: r"g/mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S2} = \frac{m}{M \times V} \end{array}",
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
                r"\begin{array}{l} C_{S2} = \frac{20,0}{399,9 \times 0,500} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S2}",
              valueTex2SvgMath: r"0,100",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation de dissolution :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Fe_2(SO_4)_3 \rightarrow \\ 2Fe^{3+} + 3SO_4^{2-} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_{S2}}{1} = \frac{[Fe^{3+}]_{S2}}{2} \\ \frac{[SO_4^{2-}]_{S2}}{3} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Fe³⁺ dans S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Fe^{3+}]_{S2} = 2 \times C_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Fe^{3+}]_{S2} = 2 \times 0,100 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Fe^{3+}]_{S2}",
              valueTex2SvgMath: r"0,200",
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
                r"\begin{array}{l} [SO_4^{2-}]_{S2} = 3 \times 0,100 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{S2}",
              valueTex2SvgMath: r"0,300",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
