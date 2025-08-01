import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'details/details1.dart';
import 'details/builders.dart';
import 'details/details2.dart';

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
            wrapped: defautDeMasseAvecEnergieDeLiaisonParNucleon(scale: 5.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          defautDeMasseAvecEnergieDeLiaisonParNucleon(
            eln: r"7,5",
            A: r"300 \  MeV",
            scale: 4.0,
          ),

          EspConstants.esp20,

          Details2(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.deltaMBold,
              value: "2250",
              unitRich: PhyNucConstants.mevc2Bold,
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
