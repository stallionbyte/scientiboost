import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          const SizedBox(height: 20),
          transition(transition: "D'une part:"),

          const SizedBox(height: 20),

          PhyNucDonneesConstants.mp,

          const SizedBox(height: 20),

          PhyNucDonneesConstants.mn,

          const SizedBox(height: 20),

          transition(transition: "Or"),

          const SizedBox(height: 20),

          PhyNucDonneesConstants.uEnMeVC2,

          const SizedBox(height: 20),

          transition(transition: "D'où"),

          const SizedBox(height: 20),

          result(
            leftRich: buildTex2SvgInWidgetSpan(math: r"m_p", scale: 0.8),
            value:
                PhyNucValuesConstants.masseProtonEnU +
                r" . " +
                PhyNucValuesConstants.uEnMeVC2,
            unitRich: buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
            bold: false,
          ),

          const SizedBox(height: 20),

          result(
            leftRich: buildTex2SvgInWidgetSpan(math: r"m_n", scale: 0.7),
            value:
                PhyNucValuesConstants.masseNeutronEnU +
                r" . " +
                PhyNucValuesConstants.uEnMeVC2,
            unitRich: buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
            bold: false,
          ),

          const SizedBox(height: 20),

          transition(transition: "Et d'autre part:"),

          const SizedBox(height: 20),

          result(
            leftRich: buildTex2SvgInWidgetSpan(
              math: r"\frac{A \cdot 8,5 MeV}{c^2}",
              scale: 2.0,
            ),
            valueRich: buildTex2SvgInWidgetSpan(math: r"120 \cdot 8,5 MeV/c^2"),
            height: 2.0,
            bold: false,
          ),

          const SizedBox(height: 20),

          transition(transition: "D'où"),

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
        ],
      ),
    );
  }
}
