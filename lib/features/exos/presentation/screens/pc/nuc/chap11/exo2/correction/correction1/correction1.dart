import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details/details1.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          EspConstants.esp20,

          BordersWrapper(
            wrapped: energieDeLiaisonParNucleon(scale: 6.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          energieDeLiaisonParNucleon(
            A: "235",
            Z: "92",
            X: "U",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
            masseNoyau: PhyNucValuesConstants.masseU235EnU,
            scale: 6.0,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              value: "7,39",
              leftRich: PhyNucConstants.elnBold,
              unit: "MeV/nucléon",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
