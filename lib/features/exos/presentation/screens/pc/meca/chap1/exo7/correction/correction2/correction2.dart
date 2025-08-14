import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';

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

          sbTxt(txt: "Décélération du train :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} a_3 = \frac{v_{final} - v_{initial}}{t_3} \\ = \frac{0 - 22{,}22}{180} \\ = -0{,}123\ \text{m/s}^2 \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          Details3(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de position pendant la décélération :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} x_3(t') = x_{3,0} + v_{3,0} \cdot t' \\ + \frac{1}{2} a_3 \cdot t'^2 \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_3(t') = x_{3,0} + 22{,}22 \cdot t' \\ + \frac{1}{2} \cdot (-0{,}123) \cdot t'^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x_3(t')",
              valueTex2SvgMath: r"x_{3,0} + 22{,}22t' - 0{,}0615t'^2",
              unitTex2SvgMath: r"",
              wrap: true,
              scale: 3.0,
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de vitesse pendant la décélération :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} v_3(t') = v_{3,0} + a_3 \cdot t' \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_3(t') = 22{,}22 + (-0{,}123) \cdot t' \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_3(t')",
              valueTex2SvgMath: r"22{,}22 - 0{,}123t'",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          transition(
            transition: "Note : t' = 0 correspond au début de la décélération",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
