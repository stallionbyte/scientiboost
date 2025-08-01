import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
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
          EspConstants.esp20,

          sbTxt(
            txt:
                "L'énergie nécessaire pour séparer complètement tous les nucléons d'un noyau correspond à l'énergie de liaison.",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"E_l",
            rightTex2SvgMath: r"E_{l/nuléon} \cdot nombre\ de\ nucléons",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: expression(
              leftTex2SvgMath: r"E_l",
              rightTex2SvgMath: r"E_{l/nuléon} \cdot A",
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          expression(leftTex2SvgMath: r"E_l", right: r"7,5 . 300"),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elBold,
              value: "2250",
              unit: "MeV",
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
