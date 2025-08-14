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

          sbTxt(txt: "Temps pour parcourir les 120 mètres :"),

          EspConstants.esp40,

          transition(transition: "Le wagonnet atteint le bas quand x = 120 m"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x(t_{final}) = 120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1{,}27 \cdot t_{final}^2 = 120 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t_{final}^2 = \frac{120}{1{,}27} = 94{,}49 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t_{final} = \sqrt{94{,}49} = 9{,}72\ \text{s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t_{final}",
              valueTex2SvgMath: r"9{,}72",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          transition(
            transition:
                "Le wagonnet met environ 10 secondes pour descendre les 120 mètres de pente jusqu'au site de traitement.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
