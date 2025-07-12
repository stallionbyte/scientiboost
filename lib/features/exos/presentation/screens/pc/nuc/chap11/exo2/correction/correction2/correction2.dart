import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/formules_constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/helpers.dart';

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
            wrapped: PhyNucFormulesConstants.energieDeLiaisonParNucleon,
            color: Colors.black,
          ),

          SizedBox(height: 20),

          Text(
            "AN: ",
            style: const TextStyle(
              fontSize: ExoConstants.fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 20),

          PhyNucFormulesConstants.energieDeLiaisonParNucleonFe56,

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              value: "8,55",
              leftRich: PhyNucConstants.elnBold,
              unit: "MeV/nucléon",
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
