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
        PhyNucData.curieEnBq,
        EspConstants.esp40,
        tex(math: r"T(\text{carbone-14}) = 5730\ ans"),
        EspConstants.esp40,
        sbTxt(
          txt:
              " Dans un organisme vivant il y'a : N₀ = 6,0 x 10¹⁵ noyaux de ¹⁴C par gramme\n\n",
        ),
        EspConstants.esp40,
        notationSymbolique(
          X: r"C",
          Z: r"\ 6",
          A: r"14",
          nomNoyau: "du carbone-14",
        ),

        EspConstants.esp40,

        sbTxt(txt: "Symbole chimique de l'aozte: N"),
      ],
    );
  }
}
