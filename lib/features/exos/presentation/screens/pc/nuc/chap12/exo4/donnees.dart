import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          X: r"F",
          Z: r"\ 9",
          A: r"18",
          nomNoyau: "du fluor-18",
        ),
        EspConstants.esp40,
        sbTxt(txt: "Symbole chimique de l'oxygène: O"),
        EspConstants.esp40,
        tex(math: r"\ln 2 = 0,693", scale: 1.0),
        EspConstants.esp40,
        tex(math: r"1 \ \text{GBq} = 10^9 \ \text{Bq}", scale: 1.0),
      ],
    );
  }
}
