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

          sbTxt(txt: "Masse de NaOH à ajouter :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Na⁺ avant l'ajout :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{Na^+,initial} = \\ [Na^+]_{initial} \times V_{solution} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Na^+,initial} = 0,200 \times 2,50 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{Na^+,initial}",
              valueTex2SvgMath: r"0,500",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Na⁺ après l'ajout :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{Na^+,final} = \\ [Na^+]_{final} \times V_{solution} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Na^+,final} = 0,350 \times 2,50 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{Na^+,final}",
              valueTex2SvgMath: r"0,875",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Na⁺ à ajouter :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Delta n_{Na^+} = \\ n_{Na^+,final} - n_{Na^+,initial} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta n_{Na^+} = 0,875 - 0,500 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta n_{Na^+}",
              valueTex2SvgMath: r"0,375",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "D'après l'équation de dissolution :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} NaOH \rightarrow Na^+ + OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{n_{NaOH}}{1} = \frac{n(Na^+)}{1} \\ = \frac{n(OH^-)_{NaOH}}{1} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{NaOH} = n_{Na^+} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Donc la quantité de NaOH à ajouter :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{NaOH} = \Delta n_{Na^+} \\ = 0,375\ mol \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse de NaOH à ajouter :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m_{NaOH} = \\ n_{NaOH} \times M_{NaOH} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} m_{NaOH} = 0,375 \times 40,0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m_{NaOH}",
              valueTex2SvgMath: r"15,0",
              unitTex2SvgMath: r"g",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
