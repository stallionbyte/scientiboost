import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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

          sbTxt(txt: "Position de la voiture à la fin de l'accélération :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_1(12) = 2{,}25 \times (12)^2 \\ = 2{,}25 \times 144 = 324\ \text{m} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Vitesse maximale atteinte :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{max} = v_1(12) = 4{,}5 \times 12 \\ = 54\ \text{m/s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire pendant la phase à vitesse constante :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} x_2(t) = x_{1}(12) + v_{max} \cdot (t - 12) \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_2(t) = 324 + 54 \cdot (t - 12) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_2(t) = 324 + 54t - 648 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x_2(t)",
              valueTex2SvgMath: r"54t - 324",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          transition(transition: "Valable pour t ≥ 12 s"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
