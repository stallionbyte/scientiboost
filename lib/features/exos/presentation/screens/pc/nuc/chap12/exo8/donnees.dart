import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          X: r"U",
          Z: r"92",
          A: r"238",
          nomNoyau: "de l'uranium-238",
        ),
        EspConstants.esp40,
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "liste de nucléides: "),

              notationNoyau(Z: r"90", A: r"", X: r"Th"),

              const TextSpan(text: " ; "),

              notationNoyau(Z: r"94", A: r"", X: r"Pu"),
            ],
          ),
        ),

        EspConstants.esp40,
        PhyNucData.cEnMParS,
        EspConstants.esp40,
        PhyNucData.uEnKg,
        EspConstants.esp40,
        tex(math: r"m(^{238}U) = 238,05079\ u"),
      ],
    );
  }
}
