import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Étapes de données numériques formatées avec tex()

          // Étape 1 : Période
          tex(
            math: r"\begin{array}{l} T = 24\ 100\ \text{ans} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 2 : Temps écoulé
          tex(
            math: r"\begin{array}{l} t = 61\ 609\ \text{ans} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 3 : Conversion année vers secondes (décomposition)
          tex(
            math:
                r"\begin{array}{l} 1\ \text{an} = 365\ \text{jours} \times 24 \\ \times 3600\ \text{secondes} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 4 : Résultat de la conversion
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  1\ \text{an} = 31\ 536\ 000\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 5 : Conversion de T en secondes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ T = 24\ 100 \times 31\ 536\ 000\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ T = 7,6 \cdot 10^{11}\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 6 : Conversion de t en secondes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  t = 61\ 609 \times 31\ 536\ 000\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  t = 1,94 \cdot 10^{12}\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 7 : Masse molaire
          sbTxt(
            txt:
                "Le nombre de masse (A) peut être utilisé comme masse molaire, d'où : M = 239 g/mol",
          ),
          EspConstants.esp40,

          // Étape 8 : Masse initiale
          tex(
            math: r"\begin{array}{l} m_0 = 5,2\ \text{kg} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 9 : Masse initiale en notation scientifique
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ m_0 = 5,2 \times 10^3\ \text{g} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
