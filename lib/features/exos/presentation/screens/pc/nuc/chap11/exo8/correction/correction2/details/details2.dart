import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'builders.dart';

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
          demoMasseNoyauFromEnergieDeLiaisonParNucleon4(
            Z: r"50",
            A: r"120",
            X: r"Sn",
            eln: r"8,5 MeV",
            mp: PhyNucValuesConstants.masseProtonEnU + r"\ u",
            mn: PhyNucValuesConstants.masseNeutronEnU + r"\ u",
            scale: 6.0,
          ),
          EspConstants.esp20,
          transition(transition: "D'une part:"),

          EspConstants.esp20,

          PhyNucDonneesConstants.mp,

          EspConstants.esp20,

          PhyNucDonneesConstants.mn,

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          PhyNucDonneesConstants.uEnMeVC2,

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_p",
            rightTex2SvgMath:
                PhyNucValuesConstants.masseProtonEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2 +
                r"MeV/c^2",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m_n",
            rightTex2SvgMath:
                PhyNucValuesConstants.masseNeutronEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2 +
                r"\ MeV/c^2",
          ),

          EspConstants.esp20,

          transition(transition: "Et d'autre part:"),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\frac{A \cdot 8,5 MeV}{c^2}",
            rightTex2SvgMath: r"120 \cdot 8,5 MeV/c^2",
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          demoMasseNoyauFromEnergieDeLiaisonParNucleon5(
            scale: 4.0,
            Z: r"50",
            A: r"120",
            X: r"Sn",
            mp:
                PhyNucValuesConstants.masseProtonEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2,
            mn:
                PhyNucValuesConstants.masseNeutronEnU +
                r" \cdot " +
                PhyNucValuesConstants.uEnMeVC2,
            eln: r"8,5",
          ),
        ],
      ),
    );
  }
}
