import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

import 'package:scientiboost/core/constants/constants.dart';
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
          X: r"Pu",
          Z: r"94",
          A: r"239",
          nomNoyau: "du plutonium-239",
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

              notationNoyau(X: r"Np", Z: r"93", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"U", Z: r"92", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Am", Z: r"95", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Cm", Z: r"96", A: r""),
            ],
          ),
        ),

        EspConstants.esp40,

        PhyNucData.nombreAvogadro,

        EspConstants.esp40,

        PhyNucData.unAnEnJours,

        EspConstants.esp40,
      ],
    );
  }
}
