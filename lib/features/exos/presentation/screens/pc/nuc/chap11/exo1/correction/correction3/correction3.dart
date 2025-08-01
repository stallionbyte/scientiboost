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
          EspConstants.esp20,

          expression(left: r"1 u", rightTex2SvgMath: r"931,5\ MeV/c^2"),

          EspConstants.esp20,

          TransitionConstants.et,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m(\ _{6}^{14}C \ )",
            right: r"14,003242 u",
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m(\ _{6}^{14}C \ )",
            right: r"14,003242 . 931,5",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              value: "13044,01992",
              leftTex2SvgMath: r"m(\ _{6}^{14}C \ )",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
