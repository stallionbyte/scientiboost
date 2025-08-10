import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details4.dart';

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

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Delta m = [m(^{232}Th) + m_n] \\ - [m(^{88}Sr) + m(^{144}Te) + m_n] \end{array}",
              scale: 3.0,
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
                r"\begin{array}{l} \Delta m = (232,038055 + 1,0086649) \\ - (87,905612 + 143,922953 + 1,0086649) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",
              valueTex2SvgMath: r"0,2095",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Énergie libérée :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} Q = \Delta m \times c^2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} Q = 0,2095 \times 931,5 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details4(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"Q",
              valueTex2SvgMath: r"195,1",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
