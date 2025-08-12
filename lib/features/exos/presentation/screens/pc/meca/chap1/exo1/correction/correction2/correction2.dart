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

          sbTxt(txt: "Équation horaire de position du motocycliste :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} x_2(t) = x_{2,0} + v_{2,0} \cdot t \\ + \frac{1}{2} a_2 \cdot t^2 \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} x_2(t) = 0 + 0 \cdot t \\ + \frac{1}{2} \cdot 2{,}5 \cdot t^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x_2(t)",
              valueTex2SvgMath: r"1{,}25t^2",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de vitesse du motocycliste :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} v_2(t) = v_{2,0} + a_2 \cdot t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t) = 0 + 2{,}5 \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_2(t)",
              valueTex2SvgMath: r"2{,}5t",
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
