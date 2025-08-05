import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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

          sbTxt(
            txt:
                "L'atome est composé du noyau et des électrons. La masse de l'atome est donc :",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m(\text{atome}) = \\ m(\text{noyau}) + m(\text{électrons}) \end{array}",
              scale: 2.5,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(\text{atome de } ^{99}Tc) = \\ 1,644 \times 10^{-25} + 3,92 \times 10^{-29} \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(\text{atome})",
              valueTex2SvgMath: r"1,644 \times 10^{-25}",
              unitTex2SvgMath: r"\text{kg}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
