import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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

          transition(transition: "Équation horaire de vitesse"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} v(t) = 9{,}8t \end{array}", scale: 3.0),
          EspConstants.esp40,

          transition(transition: "Temps de chute calculé"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{chute} = 3{,}03\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{impact} = v(t_{chute}) \\ = 9{,}8 \times 3{,}03 \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_{impact}",
              valueTex2SvgMath: r"29{,}7",
              unitTex2SvgMath: r"m/s",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
