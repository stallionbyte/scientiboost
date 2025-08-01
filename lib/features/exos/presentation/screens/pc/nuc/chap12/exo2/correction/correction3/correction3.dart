import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import 'details/details1.dart';
import 'details/details2.dart';

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
          EspConstants.esp20,

          BordersWrapper(
            wrapped: masseAvecAMNaLambda(m: r"m_0", A: r"A_0", scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          masseAvecAMNaLambda(
            scale: 4.0,
            A: r"4,39 \cdot 10^9",
            M: r"131",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24 \cdot 3600}",
            Na: r"6,02 \cdot 10^{23}",
            m: r"m_0",
          ),

          EspConstants.esp20,

          Details2(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m_0",
              leftTex2SvgMathScale: 0.6,
              valueTex2SvgMath: r"9,58 \cdot 10^{-7}",
              unit: "g",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
