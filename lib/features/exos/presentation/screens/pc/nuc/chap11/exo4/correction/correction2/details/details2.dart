import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
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
          PhyNucDonneesConstants.mp,

          SizedBox(height: 20),

          PhyNucDonneesConstants.mn,

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.deltaM,
            value: "2250",
            unitRich: PhyNucConstants.mevc2,
            bold: false,
          ),

          SizedBox(height: 20),

          transition(transition: "Or"),

          SizedBox(height: 20),

          PhyNucDonneesConstants.uEnMeVC2,

          SizedBox(height: 20),

          transition(transition: "D'où"),

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.mp,
            valueRichs: <InlineSpan>[
              const TextSpan(text: PhyNucValuesConstants.masseProtonEnU),
              const TextSpan(text: " . ${PhyNucValuesConstants.uEnMeVC2} "),
            ],
            unitRich: PhyNucConstants.mevc2,
            bold: false,
          ),

          SizedBox(height: 20),

          result(
            leftRich: PhyNucConstants.mn,
            valueRichs: <InlineSpan>[
              const TextSpan(text: PhyNucValuesConstants.masseNeutronEnU),
              const TextSpan(text: " . ${PhyNucValuesConstants.uEnMeVC2} "),
            ],
            unitRich: PhyNucConstants.mevc2,
            bold: false,
          ),

          SizedBox(height: 20),

          transition(transition: "D'où"),

          SizedBox(height: 20),

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
