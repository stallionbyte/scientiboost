import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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

          BordersWrapper(
            wrapped: buildTex2SvgInRichText(
              math:
                  r"\begin{array}{l} m(_{Z}^{A}X) = \\ (\ Z \cdot m_p + (A-Z) \cdot m_n \ ) \\ - \Delta m \end{array}",
              scale: 4.0,
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
                r"\begin{array}{l} m(_{56}^{138}Ba) = \\ 56 \times " +
                PhyNucData.valueMasseProtonEnU +
                r" \\ + 82 \times " +
                PhyNucData.valueMasseNeutronEnU +
                r" \\ - 1,262 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{56}^{138}Ba)",
              valueTex2SvgMath: r"137,905",
              unitTex2SvgMath: r"\text{u}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
