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

          transition(
            transition:
                "Au moment du rattrapage, les deux positions sont égales",
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x_1(t) = x_2(t) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  20t = 1{,}25t^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  1{,}25t^2 - 20t = 0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  t(1{,}25t - 20) = 0 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"16",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Distance du point de départ :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} x = x_1(16) = 20 \times 16 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"x",
              valueTex2SvgMath: r"320",
              unitTex2SvgMath: r"m",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
