import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
            wrapped: buildTex2SvgInRichText(
              math:
                  r"\begin{array}{l} m(_{Z}^{A}X) = - \Delta m(_{Z}^{A}X) \\ + \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m(_{43}^{99}Tc) = - 8,61 \times 10^{-28} \\ + \left( \begin{array}{l} 43 \cdot " +
                PhyNucData.valueMasseProtonEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath +
                r" \\ + (99-43) \cdot " +
                PhyNucData.valueMasseNeutronEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath +
                r" \end{array} \right) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{43}^{99}Tc)",
              valueTex2SvgMath: r"1,644 \times 10^{-25}",
              unitTex2SvgMath: r"\text{kg}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
