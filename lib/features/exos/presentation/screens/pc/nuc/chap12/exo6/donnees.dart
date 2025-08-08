import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp40,

        notationSymbolique(
          X: r"C",
          Z: r"6",
          A: r"11",
          nomNoyau: "du carbone-11",
        ),

        EspConstants.esp40,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Liste de nucléides: "),

              notationNoyau(X: r"B", Z: r"5", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Be", Z: r"4", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"N", Z: r"7", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"O", Z: r"8", A: r""),
            ],
          ),
        ),

        EspConstants.esp40,

        PhyNucData.masseElectronEnU,

        EspConstants.esp40,

        tex(math: r"m(_{\ 6}^{11}C) = 11,0114\ u"),

        EspConstants.esp40,

        PhyNucData.uEnKg,

        EspConstants.esp40,

        PhyNucData.cEnMParS,
      ],
    );
  }
}
