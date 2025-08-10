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

          transition(transition: "Perte de masse par noyau :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Delta m = [m(^{235}U) + m_n] \\ - [m(^{94}Kr) + m(^{139}Ba) \\ + 3 \times m_n] \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = (235,04393 + 1,00866) \\ - (93,93436 + 138,90884 \\ + 3 \times 1,00866) \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",
              valueTex2SvgMath: r"0,18341",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Énergie libérée par noyau :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} Q_{par\ fission} = \Delta m \times c^2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q_{par\ fission} = 0,18341 \\ \times 1,66054 \times 10^{-27} \\ \times (3,00 \times 10^8)^2 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"Q_{par\ fission}",
              valueTex2SvgMath: r"2,74 \times 10^{-11}",
              unitTex2SvgMath: r"J",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
