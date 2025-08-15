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

          sbTxt(txt: "Nature de la solution S :"),

          EspConstants.esp40,

          transition(transition: "pH = 2,4 < 7 donc la solution est acide"),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de la solution S :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"C_S = \frac{V_{gaz}}{V_m \cdot V_S}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
          TransitionConstants.an,
          EspConstants.esp40,
          tex(math: r"C_S = \frac{0,0268}{22,4 \cdot 0,3}", scale: 3.0),

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_S",
              valueTex2SvgMath: r"3,98 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
