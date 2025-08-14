import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

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

          sbTxt(txt: "Accélération du wagonnet sur le plan incliné :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} a = g \sin(15°) \\ = 9{,}8 \times \sin(15°) \\ = 2{,}54\ \text{m/s}^2 \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de position le long du plan :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} x(t) = x_0 + v_0 \cdot t \\ + \frac{1}{2} a \cdot t^2 \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 2{,}54 \cdot t^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x(t)",
              valueTex2SvgMath: r"1{,}27t^2",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de vitesse :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} v(t) = v_0 + a \cdot t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t) = 0 + 2{,}54 \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v(t)",
              valueTex2SvgMath: r"2{,}54t",
              unitTex2SvgMath: r"",
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
