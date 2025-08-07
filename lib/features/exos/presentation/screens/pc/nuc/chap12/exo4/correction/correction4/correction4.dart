import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details1.dart';

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

          BordersWrapper(
            wrapped: tex(math: r"t = \frac{\ln(4)}{\lambda}", scale: 3.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          tex(
            math: r"\lambda = 6,31 \times 10^{-3} \ \text{min}^{-1}",
            scale: 2.0,
          ),
          sbTxt(txt: "( Calculé à la question 2) )"),
          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(math: r"t = \frac{\ln(4)}{6,31 \times 10^{-3}}", scale: 3.0),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"219,7",
              unitTex2SvgMath: r"\text{minutes}",
            ),
          ),

          sbTxt(txt: "(On trouve t en min car λ est en min⁻¹)"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
