import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details2.dart';

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

          sbTxt(txt: "Temps de freinage jusqu'à l'arrêt :"),

          EspConstants.esp40,

          transition(transition: "À l'arrêt complet, la vitesse est nulle"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t'_{arrêt}) = 0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 12{,}5 - 3{,}2 \cdot t'_{arrêt} = 0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 3{,}2 \cdot t'_{arrêt} = 12{,}5 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t'_{arrêt} = \frac{12{,}5}{3{,}2} = 3{,}91\ \text{s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t'_{arrêt}",
              valueTex2SvgMath: r"3{,}91",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Instant d'arrêt depuis le début de l'observation :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{total} = 8 + 3{,}91 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t_{total}",
              valueTex2SvgMath: r"11{,}91",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
