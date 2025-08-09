import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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
            wrapped: tex(
              math:
                  r"\begin{array}{l} t = -\frac{\ln(0,3)}{\lambda} \end{array}",
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
                r"\begin{array}{l} t = -\frac{\ln(0,3)}{1,6 \cdot 10^{-3}\ an^{-1}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",

              valueTex2SvgMath: r"752,48",
              unitTex2SvgMath: r"ans",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
