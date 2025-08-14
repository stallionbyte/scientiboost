import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          transition(transition: "Condition d'arrêt"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t'_{freinage}) = 0 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Équation horaire de vitesse"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t') = 25 - 6{,}5t' \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          TransitionConstants.dou,
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 25 - 6{,}5 \cdot t'_{freinage} = 0 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Résolution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 6{,}5 \cdot t'_{freinage} = 25 \\ \Rightarrow t'_{freinage} = \frac{25}{6{,}5} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t_{freinage}",
              valueTex2SvgMath: r"3{,}85",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Temps total depuis l'aperçu du danger :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t_{total} = t_{avavt\ freinage} \\ + t_{freinage} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{total} = 5 + 3{,}85 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t_{total}",

              valueTex2SvgMath: r"8{,}85",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
