import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp20,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "Noyaux: "),

              notationNoyau(X: r"Ra", Z: r"\ \ 88", A: r"230"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Pa", Z: r"\ \ 91", A: r"234"),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"Pb", Z: r"\ \ 82", A: r"206"),
            ],
          ),
        ),
      ],
    );
  }
}
