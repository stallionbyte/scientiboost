import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
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

          tex(math: r"E = \Delta m \cdot c^2"),

          EspConstants.esp40,

          tex(math: r" \Rightarrow \ \Delta m \cdot c^2 = E "),

          EspConstants.esp40,
          tex(math: r" \Rightarrow \ \Delta m = \frac{E}{c^2} ", scale: 3.0),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(math: r"\Delta m = \frac{E}{c^2} ", scale: 3.0),
            color: Colors.black,
          ),

          EspConstants.esp40,
          TransitionConstants.an,
          EspConstants.esp40,
          tex(math: r"\Delta m = \frac{5,486 Mev}{c^2} ", scale: 3.0),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",

              valueTex2SvgMath: r"5,486",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En u"),

          EspConstants.esp40,

          PhyNucData.uEnMeVC2,

          EspConstants.esp40,

          regleDe3(
            part1: PhyNucData.valueUEnMeVC2 + r"\ MeV/c^2",
            part2: r"1\ u",
            part3: r"5,486\ Mev/c^2",
            left: r"\Delta m",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",

              valueTex2SvgMath: r"5,889 \cdot 10^{-3}",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
