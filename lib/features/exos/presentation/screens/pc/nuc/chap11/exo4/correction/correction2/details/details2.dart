import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PhyNucDonneesConstants.mp,

          EspConstants.esp20,

          PhyNucDonneesConstants.mn,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\Delta m",
            leftTex2SvgMathScale: 0.7,
            rightTex2SvgMath: r"2250\ MeV/c^2",
          ),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          PhyNucDonneesConstants.uEnMeVC2,

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_p",
            leftTex2SvgMathScale: 0.7,
            rightTex2SvgMath:
                PhyNucValuesConstants.masseProtonEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2 +
                r"\ MeV/c^2",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_n",
            leftTex2SvgMathScale: 0.6,
            rightTex2SvgMath:
                PhyNucValuesConstants.masseNeutronEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2 +
                r"\ MeV/c^2",
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          defautDeMasseInverse5(
            Z: r"120",
            A: r"300",
            defautDeMasse: r"2250",
            mp:
                PhyNucValuesConstants.masseProtonEnU +
                r"\ \cdot \ " +
                PhyNucValuesConstants.uEnMeVC2,
            mn:
                PhyNucValuesConstants.masseNeutronEnU +
                r"\ \cdot \ " +
                PhyNucValuesConstants.uEnMeVC2,
            scale: 6.0,
          ),
        ],
      ),
    );
  }
}
