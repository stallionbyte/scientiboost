import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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

          BordersWrapper(
            wrapped: tex(math: r"\Delta m = \frac{E_l}{c^2}", scale: 3.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(math: r"\Delta m = \frac{1176\ MeV}{c^2}", scale: 2.5),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",
              valueTex2SvgMath: r"1176\ ",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Ou en u"),

          EspConstants.esp40,

          PhyNucData.uEnMeVC2,

          EspConstants.esp40,

          regleDe3(
            part1: PhyNucData.valueUEnMeVC2 + r"\ MeV/c^2",
            part2: r"1\ u",
            part3: r"1176\ MeV/c^2",
            left: r"\Delta m",
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",
              valueTex2SvgMath: r"1,262",
              unitTex2SvgMath: r"\text{u}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
