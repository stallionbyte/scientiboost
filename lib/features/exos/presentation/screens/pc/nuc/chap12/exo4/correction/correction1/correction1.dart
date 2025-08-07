import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/reactions/reactions_builders.dart';

import 'details1.dart';

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
          EspConstants.esp40,

          sbTxt(txt: "Équation de la désintégration β⁺ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: betaPlus(
              X1: r"F",
              Z1: r"\ 9",
              A1: r"18",
              X2: r"O",
              Z2: r"\ 8",
              A2: r"18",
              scale: 1.5,
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(
            txt:
                "• Noyau père : fluor-18 (¹⁸F)\n"
                "• Noyau fils : oxygène-18 (¹⁸O)",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
