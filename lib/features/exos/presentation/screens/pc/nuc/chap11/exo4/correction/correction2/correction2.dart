import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

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
          SizedBox(height: 20),

          BordersWrapper(
            wrapped: defautDeMasseInverse4(scale: 3.0),
            color: Colors.black,
          ),

          SizedBox(height: 20),

          Details1(),

          SizedBox(height: 20),

          transition(transition: "AN"),

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

          SizedBox(height: 20),

          Details2(),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRichs: buildResultLeft(),
              value: "279466",
              unitRich: PhyNucConstants.mevc2Bold,
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }

  List<InlineSpan> buildResultLeft() {
    return <InlineSpan>[
      const TextSpan(
        text: "m( ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      notationNoyau(A: r"300", Z: r"120"),
      const TextSpan(
        text: " ) ",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ];
  }
}
