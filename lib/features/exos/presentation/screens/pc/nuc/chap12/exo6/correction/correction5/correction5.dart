import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
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
                  r"\begin{array}{l} t = \frac{3 \cdot ln2}{\lambda} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),
          EspConstants.esp40,
          Details1(),
          EspConstants.esp40,

          TransitionConstants.an,
          tex(
            math:
                r"\begin{array}{l} t = \frac{3 \cdot ln2}{5,63 \cdot 10^{-4}\ min^{-1}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",

              valueTex2SvgMath: r"3693,5",
              unitTex2SvgMath: r"min",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
