import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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

          sbTxt(txt: "Vitesse angulaire du satellite :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} T = 24\ \text{h} = 86400\ \text{s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} \omega = \frac{2\pi}{T} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \omega = \frac{2\pi}{86400} \\ = 7{,}27 \times 10^{-5}\ \text{rad/s} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation horaire de la position angulaire :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \theta(t) = \theta_0 + \omega \cdot t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \theta(t) = 0 + 7{,}27 \times 10^{-5} \cdot t \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\theta(t)",
              valueTex2SvgMath: r"7{,}27 \times 10^{-5} \cdot t",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
