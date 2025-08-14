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

          sbTxt(txt: "Répartition des phases :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{total} = t_1 + t_2 + t_3 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t_1 + t_2 + t_3 = t_{total}  \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l}  t_2 = t_{total} - t_1  - t_3 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l}  t_2 = 25 - 4 - 3 \end{array}",
            scale: 3.0,
          ),

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",

              valueTex2SvgMath: r"18",
              unitTex2SvgMath: r"min",
            ),
          ),

          EspConstants.esp40,

          transition(
            transition:
                "Le train roule à vitesse constante pendant 18 minutes sur les 25 minutes du trajet total.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
