import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          SizedBox(height: 20),

          defautDeMasse(scale: 6.0),

          const SizedBox(height: 20),

          transition(transition: "Or"),

          const SizedBox(height: 20),

          PhyNucDonneesConstants.mp,

          SizedBox(height: 20),

          PhyNucDonneesConstants.mn,

          SizedBox(height: 20),

          PhyNucDonneesConstants.uEnKg,

          SizedBox(height: 20),

          transition(transition: "D'où"),

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.mp,
            valueRichs: <InlineSpan>[
              const TextSpan(text: PhyNucValuesConstants.masseProtonEnU),
              const TextSpan(text: " . "),
              PhyNucValuesConstants.uEnKg,
            ],
            unit: "kg",
            bold: false,
          ),

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.mn,
            valueRichs: <InlineSpan>[
              const TextSpan(text: PhyNucValuesConstants.masseNeutronEnU),
              const TextSpan(text: " . "),
              PhyNucValuesConstants.uEnKg,
            ],
            unit: "kg",
            bold: false,
          ),

          SizedBox(height: 20),

          transition(transition: "Ainsi"),

          SizedBox(height: 20),

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
