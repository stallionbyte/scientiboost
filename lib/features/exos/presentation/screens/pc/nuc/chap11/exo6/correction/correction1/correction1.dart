import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: energieDeLiaison(scale: 6.0),
            color: Colors.black,
          ),

          const SizedBox(height: 20),

          TransitionConstants.an,

          const SizedBox(height: 20),

          energieDeLiaison(
            Z: r"88",
            A: r"226",
            scale: 6.0,
            X: r"Ra",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            masseNoyau: r"226.0254",
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elBold,
              value: "1686,62",
              unit: "MeV",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
