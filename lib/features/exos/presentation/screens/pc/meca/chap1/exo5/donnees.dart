import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
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
        tex(
          math:
              r"\begin{array}{l}accélération: \\ a = g = 9{,}8\ \text{m/s}^2 \end{array}",
          scale: 3.0,
        ),
        EspConstants.esp40,
        sbTxt(
          txt:
              "Un mouvement de chute libre est un mouvement rectiligne uniformément accéléré",
        ),
      ],
    );
  }
}
