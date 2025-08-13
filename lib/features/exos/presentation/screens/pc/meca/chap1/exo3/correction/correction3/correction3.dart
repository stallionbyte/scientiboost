import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details2.dart';

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

          sbTxt(txt: "Vitesse maximale atteinte :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} v_1(t) = 4{,}5t \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          transition(transition: "La vitesse maximale est atteinte à t = 12 s"),

          EspConstants.esp40,

          TransitionConstants.an,
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{max} = v_1(12) = 4{,}5 \times 12 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_{max}",
              valueTex2SvgMath: r"54",
              unitTex2SvgMath: r"m/s",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Conversion en km/h :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} v_{max} = 54 \times 3{,}6 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_{max}",
              valueTex2SvgMath: r"194{,}4",
              unitTex2SvgMath: r"km/h",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
