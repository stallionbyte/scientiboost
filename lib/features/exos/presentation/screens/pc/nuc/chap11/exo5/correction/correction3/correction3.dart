import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

import 'details1.dart';
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

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m(_{Z}^{A}X) = Z \cdot m_p \\ + (A-Z) \cdot m_n - \frac{E_l}{c^2} \end{array}",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(_{26}^{56}Fe) =\\ 26 \cdot " +
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r" \\ + (56-26) \cdot " +
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\\ - 448 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{26}^{56}Fe)",
              valueTex2SvgMath: r"52134,36",
              unitTex2SvgMath: r"MeV/c^2",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En u"),

          EspConstants.esp40,

          regleDe3(
            part1: PhyNucData.valueUEnMeVC2 + r"\ MeV/c^2",
            part2: r"1\ u",
            part3: r"52134,36\ MeV/c^2",
            left: r"m(_{26}^{56}Fe)",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{26}^{56}Fe)",
              valueTex2SvgMath: r"55,96",
              unitTex2SvgMath: r"u",
              scale: 2.0,
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
