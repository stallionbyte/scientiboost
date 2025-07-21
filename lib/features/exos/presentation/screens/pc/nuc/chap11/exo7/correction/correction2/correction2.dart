import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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

          energieDeLiaisonParNucleon(scale: 6.0),

          const SizedBox(height: 20),

          transition(transition: "Cas du chlore-35"),

          const SizedBox(height: 20),

          energieDeLiaisonParNucleon(
            Z: r"17",
            A: r"35",
            scale: 6.0,
            X: r"Cl",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            masseNoyau: PhyNucValuesConstants.masseCl35EnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elnBold,
              value: "8,27",
              unit: "MeV",
            ),
          ),

          const SizedBox(height: 20),

          transition(transition: "Cas du chlore-36"),

          const SizedBox(height: 20),

          energieDeLiaisonParNucleon(
            Z: r"17",
            A: r"36",
            scale: 6.0,
            X: r"Cl",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            masseNoyau: PhyNucValuesConstants.masseCl36EnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elnBold,
              value: "8,28",
              unit: "MeV",
            ),
          ),

          const SizedBox(height: 20),

          transition(transition: "Cas du chlore-37"),

          const SizedBox(height: 20),

          energieDeLiaisonParNucleon(
            Z: r"17",
            A: r"37",
            scale: 6.0,
            X: r"Cl",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            masseNoyau: PhyNucValuesConstants.masseCl37EnU,
            uEnMeVC2: PhyNucValuesConstants.uEnMeVC2,
          ),

          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.elnBold,
              value: "8,33",
              unit: "MeV",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
