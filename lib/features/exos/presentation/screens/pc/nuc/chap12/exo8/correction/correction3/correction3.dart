import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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
              math: r"m' = m_0 ( 1 - \Large{e}^{-\frac{ln2}{T}t} )",
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
                r"\begin{array}{l} m' = 125( 1 -\\ \Large{e}^{-\frac{ln2}{4,47 \cdot 10^9}1,34 \cdot 10^{10}} ) \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp20,

          sbTxt(
            txt:
                "t et T sont en années, les unités se simplifient, pas besoin de convertion",
          ),
          EspConstants.esp20,
          sbTxt(
            txt:
                "Dans cette formule, si on laisse la masse en mg, on trouve le résultat en mg",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m'",
              valueTex2SvgMath: r"109,35",
              unitTex2SvgMath: r"mg",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
