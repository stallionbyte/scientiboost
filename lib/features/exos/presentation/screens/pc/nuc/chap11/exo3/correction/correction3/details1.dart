import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,

          defautDeMasse(scale: 6.0),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          PhyNucDonneesConstants.mp,

          EspConstants.esp20,

          PhyNucDonneesConstants.mn,

          EspConstants.esp20,

          PhyNucDonneesConstants.uEnKg,

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_p",
            leftTex2SvgMathScale: 0.8,
            rightTex2SvgMath:
                PhyNucValuesConstants.masseProtonEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnKgMath +
                r"\ kg",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_n",
            leftTex2SvgMathScale: 0.7,
            rightTex2SvgMath:
                PhyNucValuesConstants.masseNeutronEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnKgMath +
                r"\ kg",
          ),

          EspConstants.esp20,

          TransitionConstants.ainsi,

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
        ],
      ),
    );
  }
}
