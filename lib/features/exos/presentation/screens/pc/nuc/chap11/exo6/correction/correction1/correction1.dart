import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

import 'details1.dart';
import 'details2.dart';

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
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Rightarrow \ m(_{Z}^{A}X) = Z \cdot m_p \\ + (A-Z) \cdot m_n \\ - \frac{A \cdot E_{l/nuc}}{c^2} \end{array}",
              scale: 5.0,
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ m(_{60}^{144}Nd) =\\ 60 \cdot " +
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r" \\ + (144-60) \cdot " +
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\\ - 144 \cdot 8,25 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{60}^{144}Nd)",
              valueTex2SvgMath: r"134032,65",
              unitTex2SvgMath: r"MeV/c^2",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
