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

          sbTxt(txt: "Masse molaire du chlorure de magnésium hexahydraté :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} M(MgCl_2 \cdot 6H_2O) = M(Mg) \\ + 2 \times M(Cl) \\ + 6 \times [2 \times M(H) + M(O)] \end{array}",
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
                r"\begin{array}{l} M = 24,3 \\ + 2 \times 35,5 \\ + 6 \times (2 \times 1,0 + 16,0) \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} M = 203,3\ g/mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de S1 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} C_1 = \frac{m}{M \times V} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_1 = \frac{19,1}{203,3 \times 0,400} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_1",
              valueTex2SvgMath: r"0,235",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
