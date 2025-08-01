import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

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

          donnerCompositionNucleide(
            nucleide: notationNoyau(X: r"C", Z: r"\ \ 6", A: r"14"),
            A: 14,
            Z: 6,
          ),

          EspConstants.esp20,

          sbTxt(txt: "14 nucléons au total (A = 14)"),

          sbTxt(txt: "6 protons (Z = 6)"),

          sbTxt(txt: "8 neutrons (N = A - Z => N = 8)"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
