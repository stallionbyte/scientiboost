import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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
          EspConstants.esp40,

          sbTxt(txt: "Volume de HCl gazeux dissous :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de matière de HCl dans la solution :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{HCl} = C \times V_{solution} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{HCl} = 5,0 \times 10^{-3} \times 0,750 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{HCl}",
              valueTex2SvgMath: r"3,75 \times 10^{-3}",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Volume de gaz HCl dissous :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} V_{gaz} = n_{HCl} \times V_m \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} V_{gaz} = 3,75 \times 10^{-3} \times 22,4 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"V_{gaz}",
              valueTex2SvgMath: r"8,40 \times 10^{-2}",
              unitTex2SvgMath: r"L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
