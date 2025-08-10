import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

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
          Z: r"95",
          A: r"233",
          nomNoyau: "de l'uranium-233",
        ),
        EspConstants.esp40,
        notationSymbolique(
          X: r"Rb",
          Z: r"37",
          A: r"90",
          nomNoyau: "du rubidium-90",
        ),
        EspConstants.esp40,
        tex(scale: 3.0, math: r"^{233}U\ :\ E_{l/n} = 7,590 MeV"),
        EspConstants.esp40,
        tex(scale: 3.0, math: r"1\ neutron\ :\ E_{l/n} = 0 MeV"),
        EspConstants.esp40,
        tex(scale: 3.0, math: r"^{90}Rb\ :\ E_{l/n} = 8,667 MeV"),
        EspConstants.esp40,
        tex(scale: 3.0, math: r"X (inconnu) :\ E_{l/n} = 8,520 MeV"),
        EspConstants.esp40,
        tex(scale: 3.0, math: r"\mathcal{N_A} = 6,022 \times 10^{23} mol^{-1}"),
        EspConstants.esp40,
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Liste d'éléments chimiques: "),

              notationNoyau(X: r"Xe", Z: r"54", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Cs", Z: r"55", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Ba", Z: r"56", A: r""),
            ],
          ),
        ),
      ],
    );
  }
}
