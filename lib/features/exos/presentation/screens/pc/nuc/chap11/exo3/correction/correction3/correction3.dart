import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
            wrapped: buildTex2SvgInRichText(
              math: r"\begin{array}{l} E_{l/nuc} = \frac{E_l}{A} \end{array}",
              scale: 2.5,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math: r"\begin{array}{l} E_{l/nuc} = \frac{825,6}{98} \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"8,424",
              unitTex2SvgMath: r"\text{MeV}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
