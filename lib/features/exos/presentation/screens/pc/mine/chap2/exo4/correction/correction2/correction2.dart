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

          sbTxt(txt: "Calcul de la masse d'hydroxyde de calcium dissoute :"),

          EspConstants.esp40,

          sbTxt(txt: "Nombre de moles de Ca(OH)₂ dans la solution :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{Ca(OH)_2} = \\ C_{Ca(OH)_2} \times V_{solution} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Ca(OH)_2} = \\ 2,50 \times 10^{-3} \times 1,8 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{Ca(OH)_2}",
              valueTex2SvgMath: r"4,50 \times 10^{-3}",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse de Ca(OH)₂ dissoute :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m_{Ca(OH)_2} = \\ n_{Ca(OH)_2} \times M_{Ca(OH)_2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{Ca(OH)_2} = \\ 4,50 \times 10^{-3} \times 74,1 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m_{Ca(OH)_2}",
              valueTex2SvgMath: r"0,333",
              unitTex2SvgMath: r"g",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Conclusion :"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "Il a fallu dissoudre 0,333 g d'hydroxyde de calcium pour préparer les 1,8 L de solution de pH = 11,7.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
