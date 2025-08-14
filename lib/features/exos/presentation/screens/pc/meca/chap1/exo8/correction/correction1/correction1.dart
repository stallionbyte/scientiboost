import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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

          sbTxt(txt: "Rayon orbital du satellite :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} r = R_{\text{Terre}} + h \end{array}",
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
            math: r"\begin{array}{l} r = 6371 + 35786 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"r",
              valueTex2SvgMath: r"42157",
              unitTex2SvgMath: r"km",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Conversion en mètres :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} r = 42157 \times 10^3 \\ = 4{,}2157 \times 10^7\ \text{m} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          transition(
            transition:
                "ORBITE : Le satellite évoluera à 42 157 km du centre de la Terre",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
