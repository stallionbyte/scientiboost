import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

import 'details1.dart';

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

          defautDeMasse(scale: 5.0),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          defautDeMasse(
            wrap: true,
            X: r"Nd",
            Z: r"60",
            A: r"144",
            mp:
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2,
            mn:
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2,
            masseNoyau: r"134032,65",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m(_{\ 60}^{144}Nd)",
              valueTex2SvgMath: r"1188",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En u"),

          EspConstants.esp40,

          regleDe3(
            part1: PhyNucData.valueUEnMeVC2 + r"\ MeV/c^2",
            part2: r"\ u",
            part3: r"1188\ MeV/c^2",
            left: r"\Delta m(_{\ 60}^{144}Nd)",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m(_{\ 60}^{144}Nd)",
              valueTex2SvgMath: r"1,27",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
