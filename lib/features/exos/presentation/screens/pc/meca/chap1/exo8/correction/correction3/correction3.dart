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

          sbTxt(txt: "Vitesse linéaire du satellite :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} v = r \times \omega \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v = 4{,}2157 \times 10^7 \\ \times 7{,}27 \times 10^{-5} \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v",
              valueTex2SvgMath: r"3065",
              unitTex2SvgMath: r"m/s",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Conversion en km/h :"),

          EspConstants.esp40,

          regleDe3(
            part1: r"1\ m/s",
            part2: r"3,6\ km/h",
            part3: r"3065\ m/s",
            left: r"v",
            scale: 8.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v = 3065 \times 3{,}6 \\ = 11034\ \text{km/h} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
