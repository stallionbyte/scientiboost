import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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

          sbTxt(txt: "Calcul du volume d'acide sulfurique pur :"),

          EspConstants.esp40,

          sbTxt(txt: "Nombre de moles de H₂SO₄ dans la solution :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{H_2SO_4} = C_{H_2SO_4} \times V_{solution} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{H_2SO_4} = \\ 1,58 \times 10^{-3} \times 2,5 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{H_2SO_4}",
              valueTex2SvgMath: r"3,95 \times 10^{-3}",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse de H₂SO₄ pur :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m_{H_2SO_4} = n_{H_2SO_4} \times M_{H_2SO_4} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{H_2SO_4} = \\ 3,95 \times 10^{-3} \times 98,0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m_{H_2SO_4}",
              valueTex2SvgMath: r"0,387",
              unitTex2SvgMath: r"g",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Volume de H₂SO₄ pur :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} V_{H_2SO_4\ pur} = \frac{m_{H_2SO_4}}{\rho_{H_2SO_4\ pur}} \end{array}",
              scale: 3.0,
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
                r"\begin{array}{l} V_{H_2SO_4\ pur} = \frac{0,387}{1,84} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"V_{H_2SO_4\ pur}",
              valueTex2SvgMath: r"0,210",
              unitTex2SvgMath: r"mL",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Conclusion :"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "Il a fallu dissoudre 0,210 mL d'acide sulfurique pur pour préparer les 2,5 L de solution de pH = 2,5.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
