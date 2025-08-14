import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Conversion de la vitesse de croisière :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{max} = 80\ \text{km/h} \\ = \frac{80 \times km}{h}  \\ = \frac{80 \times 1000}{3600} \\ = 22{,}22\ \text{m/s} \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Accélération du train :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} a_1 = \frac{v_{max} - v_0}{t_1} \\ = \frac{22{,}22 - 0}{240} \\ = 0{,}0926\ \text{m/s}^2 \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,
          Details3(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de position pendant l'accélération :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} x_1(t) = x_{1,0} + v_{1,0} \cdot t \\ + \frac{1}{2} a_1 \cdot t^2 \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 0{,}0926 \cdot t^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x_1(t)",
              valueTex2SvgMath: r"0{,}0463t^2",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de vitesse pendant l'accélération :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} v_1(t) = v_{1,0} + a_1 \cdot t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_1(t) = 0 + 0{,}0926 \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_1(t)",
              valueTex2SvgMath: r"0{,}0926t",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          transition(
            transition: "Note : t en secondes, valable pour 0 ≤ t ≤ 240 s",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
