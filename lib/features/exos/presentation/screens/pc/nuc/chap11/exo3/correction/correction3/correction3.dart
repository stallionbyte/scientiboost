import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          EspConstants.esp20,

          BordersWrapper(
            wrapped: defautDeMasse(scale: 6.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          defautDeMasse(
            X: r"Co",
            Z: r"27",
            A: r"60",
            mp:
                PhyNucValuesConstants.masseProtonEnU +
                r"\  . \  " +
                PhyNucValuesConstants.uEnKgMath,
            mn:
                PhyNucValuesConstants.masseNeutronEnU +
                r"\  . \  " +
                PhyNucValuesConstants.uEnKgMath,
            masseNoyau: r" 9,938746 . 10^{-26}",
            scale: 5.0,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(\ _{27}^{60}Co \ )",
              valueTex2SvgMath: r"1,0133 \cdot 10^{-27}",
              unit: "kg",
            ),
          ),

          EspConstants.esp20,

          Details1(),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
