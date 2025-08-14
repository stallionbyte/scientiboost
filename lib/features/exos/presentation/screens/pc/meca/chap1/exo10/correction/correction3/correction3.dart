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

          sbTxt(txt: "Distance de freinage :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{final}^2 - v_{initial}^2 =  2 \cdot a \cdot d \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Rightarrow \ v_{final}^2 = v_{initial}^2 + 2 \cdot a \cdot d \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 0 = (25)^2 \\ + 2 \times (-6{,}5) \times d \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 0 = 625 - 13 \cdot d \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 13 \cdot d = 625 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d = \frac{625}{13} = 48{,}08\ \text{m} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"d_{freinage}",
              valueTex2SvgMath: r"48{,}08",
              unitTex2SvgMath: r"m",
            ),
          ),

          EspConstants.esp40,

          transition(
            transition:
                "La distance de freinage est d'environ 48 mètres pour passer de 90 km/h à l'arrêt complet avec cette décélération.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
