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
          X: r"Ra",
          Z: r"86",
          A: r"222",
          nomNoyau: "du radon-222",
        ),
        EspConstants.esp40,
        tex(math: r"T = 3,8\ jours"),
        EspConstants.esp40,
        sbTxt(txt: " Seuil d'évacuation obligatoire :\n A = 10⁵ Bq"),
        EspConstants.esp40,
        sbTxt(txt: " Symbole chimique du polonium: Po "),
      ],
    );
  }
}
