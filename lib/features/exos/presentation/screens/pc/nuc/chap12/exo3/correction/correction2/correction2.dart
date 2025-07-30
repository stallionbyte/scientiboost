import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import 'details/details1.dart';

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
            wrapped: energieReaction12(
              X1: r"U",
              Z1: r"92",
              A1: r"238",
              X2: r"Th",
              Z2: r"90",
              A2: r"234",
              X3: r"He",
              Z3: r"2",
              A3: r"4",
              scale: 4.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          energieReaction12(
            m1: PhyNucValuesConstants.masseU238EnU,
            m2: PhyNucValuesConstants.masseTh234EnU,
            m3: PhyNucValuesConstants.masseParticuleAlphaEnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
            scale: 3.0,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: r"E", value: r"4,28", unit: r"MeV"),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
