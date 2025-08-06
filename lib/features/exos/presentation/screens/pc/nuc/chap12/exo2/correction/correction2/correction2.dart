import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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

          sbTxt(txt: "La constante radioactive λ est liée à la période par :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(math: r"\lambda = \frac{\ln 2}{T}", scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(math: r"\lambda = \frac{0,693}{8,1}", scale: 2.0),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\lambda",
              valueTex2SvgMath: r"8,55 \cdot 10^{-2}",
              unitTex2SvgMath: r"\text{j}^{-1}",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En secondes"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\lambda",
              valueTex2SvgMath: r"9,89 \cdot 10^{-7}",
              unitTex2SvgMath: r"\text{s}^{-1}",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
