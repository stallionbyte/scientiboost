import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
        expression(
          leftTex2SvgMath: r"\lambda",
          rightTex2SvgMath: r"1,05 \cdot 10^{-4} \ s^-1",
        ),
        EspConstants.esp20,
        notationSymbolique(
          X: r"F",
          Z: r"\ \ 9",
          A: r"18",
          nomNoyau: r"du fluor-18",
        ),
        EspConstants.esp20,
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "éléments chimiques: "),

              notationNoyau(X: r"Ne", Z: r"10", A: r""),

              const TextSpan(text: " ; "),

              notationNoyau(X: r"O", Z: r"8", A: r""),
            ],
          ),
        ),
      ],
    );
  }
}
