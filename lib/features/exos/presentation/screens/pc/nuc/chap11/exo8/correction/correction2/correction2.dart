import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'details/details1.dart';
import 'details/details2.dart';
import 'details/builders.dart';

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
          EspConstants.esp20,

          BordersWrapper(
            wrapped: demoMasseNoyauFromEnergieDeLiaisonParNucleon4(scale: 6.0),
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

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

          EspConstants.esp20,

          Details2(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(\ _{50}^{120}Sn \ )",
              value: "111663,88",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
