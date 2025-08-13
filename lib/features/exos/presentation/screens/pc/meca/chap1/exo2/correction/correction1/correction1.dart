import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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

          sbTxt(
            txt: "Équation horaire pendant la phase de vitesse constante :",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} x_1(t) = x_0 + v_1 \cdot t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_1(t) = 0 + 12{,}5 \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x_1(t)",
              valueTex2SvgMath: r"12{,}5t",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          transition(transition: "Valable pour 0 ≤ t ≤ 8 s"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
