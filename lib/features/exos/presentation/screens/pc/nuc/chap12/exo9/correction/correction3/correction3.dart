import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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
          tex(
            math:
                r"\begin{array}{l} \Delta m =\\ m(_{\ 95}^{241}Am) - m(_{\ 93}^{237}Np) - m_{\alpha} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ m(_{\ 95}^{241}Am) - m(_{\ 93}^{237}Np) - m_{\alpha} =\\ \Delta m \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ m(_{\ 95}^{241}Am) =\\  m(_{\ 93}^{237}Np) + m_{\alpha} + \Delta m \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m(_{\ 95}^{241}Am) =\\  m(_{\ 93}^{237}Np) + m_{\alpha} + \Delta m \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),
          EspConstants.esp40,
          TransitionConstants.an,
          tex(
            math:
                r"\begin{array}{l} m(_{\ 95}^{241}Am) =\\  237,048168 + " +
                PhyNucData.valueMasseParticuleAlphaEnU +
                r" + 5,889 \cdot 10^{-3} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(_{\ 95}^{241}Am)",

              valueTex2SvgMath: r"241,05666",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
