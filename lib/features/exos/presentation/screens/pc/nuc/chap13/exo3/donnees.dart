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
          X: r"Th",
          Z: r"90",
          A: r"232",
          nomNoyau: "du thorium-232",
        ),
        EspConstants.esp40,
        sbTxt(txt: "m(²³²Th) = 232.038055 u"),
        EspConstants.esp40,
        sbTxt(txt: "m(¹n) = 1.0086649 u"),
        EspConstants.esp40,
        sbTxt(txt: "m(⁸⁸Sr) = 87.905612 u"),
        EspConstants.esp40,
        sbTxt(txt: "m(¹⁴⁴Te) = 143.922953 u"),
        EspConstants.esp40,
        sbTxt(txt: "1 u = 931,5 MeV/c²"),
        EspConstants.esp40,
        sbTxt(txt: "Masse de l'échantillon = 15 g"),
        EspConstants.esp40,
        sbTxt(txt: "Masse molaire du ²³²Th = 232 g/mol"),
        EspConstants.esp40,
        tex(math: r"\mathcal{N_A} = 6,022 \cdot 10^{23} mol^{-1}"),
      ],
    );
  }
}
