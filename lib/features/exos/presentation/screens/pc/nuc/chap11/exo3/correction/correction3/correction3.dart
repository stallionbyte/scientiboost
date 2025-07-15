import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules_builders.dart';

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
          SizedBox(height: 20),

          BordersWrapper(wrapped: defautDeMasse(), color: Colors.black),

          SizedBox(height: 20),

          Text(
            "AN: ",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),

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
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRichs: buildResultLeft(),
              valueRichs: buildResultValue(),
              unit: "kg",
            ),
          ),

          SizedBox(height: 20),

          Details1(),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  List<InlineSpan> buildResultLeft() {
    return <InlineSpan>[
      PhyNucConstants.deltaBold,
      const TextSpan(
        text: " m( ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      PhyNucConstants.cobalt60Bold,
      const TextSpan(
        text: " ) ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ];
  }

  List<InlineSpan> buildResultValue() {
    return <InlineSpan>[
      const TextSpan(
        text: " 1,0133 ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      exp(exp: r" -27 ", bold: true),
    ];
  }
}
