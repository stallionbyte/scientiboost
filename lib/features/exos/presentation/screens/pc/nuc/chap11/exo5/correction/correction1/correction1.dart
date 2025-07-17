import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          SizedBox(height: 20),

          BordersWrapper(
            wrapped: defautDeMasse(scale: 5.0),
            color: Colors.black,
          ),

          SizedBox(height: 20),

          transition(transition: "AN:"),

          SizedBox(height: 20),

          defautDeMasse(
            X: r"Pu",
            Z: r"94",
            A: r"238",
            mp: PhyNucValuesConstants.masseProtonEnU,
            mn: PhyNucValuesConstants.masseNeutronEnU,
            masseNoyau: r"238,05",
            scale: 5.0,
          ),

          SizedBox(height: 20),

          BordersWrapper(
            wrapped: result(
              leftRich: PhyNucConstants.deltaM,
              value: "1,88",
              unit: "u",
            ),
          ),

          SizedBox(height: 40),
        ],
      ),
    );
  }
}
