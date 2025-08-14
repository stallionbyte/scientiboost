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

          sbTxt(txt: "Phase de descente (depuis le point culminant) :"),

          EspConstants.esp40,

          transition(
            transition: "Nouvelle origine : t' = 0 au point culminant",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de position pendant la descente :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} y_2(t') = y_{max} + v'_0 \cdot t' \\ - \frac{1}{2} g \cdot t'^2 \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_2(t') = y_{max} + 0 \cdot t' \\ - \frac{1}{2} \cdot 9{,}8 \cdot t'^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"y_2(t')",
              valueTex2SvgMath: r"y_{max} - 4{,}9t'^2",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de vitesse pendant la descente :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} v_2(t') = v'_0 - g \cdot t' \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t') = 0 - 9{,}8 \cdot t' \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_2(t')",
              valueTex2SvgMath: r"-9{,}8t'",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          transition(
            transition:
                "Note : v₂ < 0 indique un mouvement vers le bas, opposé au sens de l'axe orienté vers le haut",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
