import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';
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
          X: r"Xe",
          Z: r"54",
          A: r"131",
          nomNoyau: r"du xenon-131",
        ),

        EspConstants.esp40,

        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,

              color: Colors.black,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "l'iode-131: "),

              buildTex2SvgInWidgetSpan(math: r"^{131}I"),
            ],
          ),
        ),

        EspConstants.esp40,

        tex(math: r"T = 8,1 \ \text{jours}", scale: 1.0),

        EspConstants.esp40,

        tex(math: r"A_{seuil} = 10^6 \ \text{Bq}", scale: 1.0),

        EspConstants.esp40,

        tex(math: r"\ln 2 = 0,693", scale: 1.0),

        EspConstants.esp40,
        PhyNucData.masseElectronEnU,
        EspConstants.esp40,
        tex(math: r"m(_{\ 53}^{131}) = 130,906\ \text{u}"),
        EspConstants.esp40,
        PhyNucData.uEnMeVC2,
      ],
    );
  }
}
