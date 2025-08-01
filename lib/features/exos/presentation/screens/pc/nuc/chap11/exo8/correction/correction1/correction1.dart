import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          EspConstants.esp20,

          transition(
            transition:
                "L'énergie de liaison par nucléon est l'énergie nécessaire pour séparer un nucléon de son noyau.",
          ),

          EspConstants.esp20,

          regleDe3(
            part1: r"3 \ \text{nucléons}",
            part2: r"25,5 \ MeV",
            part3: r"1 \ \text{nucléon}",
            left: r"E_{l/nuc}",
            border: true,
            bold: true,
            scale: 6.0,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nucléon}",
              value: "8,5",
              unit: "MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
