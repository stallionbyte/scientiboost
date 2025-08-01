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
          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: demoMasseNoyauFromEnergieDeLiaisonParNucleon4(scale: 6.0),
          ),

          const SizedBox(height: 20),

          Details1(),

          const SizedBox(height: 20),

          TransitionConstants.an,

          const SizedBox(height: 20),

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

          const SizedBox(height: 20),

          Details2(),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRichs: buildResultleft(),
              value: "111663,88",
              unitRich: buildTex2SvgInWidgetSpan(math: r"\mathbf{MeV/c^2}"),
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }

  List<InlineSpan> buildResultleft() {
    return <InlineSpan>[
      TextSpan(text: 'm(', style: TextStyle(fontWeight: FontWeight.bold)),

      buildTex2SvgInWidgetSpan(math: r"\mathbf{_{50}^{120}Sn}"),

      TextSpan(text: ')', style: TextStyle(fontWeight: FontWeight.bold)),
    ];
  }
}
