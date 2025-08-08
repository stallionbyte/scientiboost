import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          // Raisonnement détaillé : Application numérique de Q = [m(_{53}^{131}I) - mₑ]c²

          // Étape 1 : Formule générale
          tex(
            math:
                r"\begin{array}{l} Q = [m(_{\ 53}^{131}I) - m_e] \cdot c^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Données numériques disponibles
          tex(
            math:
                r"\begin{array}{l} m(_{\ 53}^{131}I) = 130,906\ \text{u} \\ m_e = 0,000549\ \text{u} \\ 1\ \text{u} = 931\ \text{MeV/c}^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Conversion de l'équivalence masse-énergie
          tex(
            math:
                r"\begin{array}{l} 1\ \text{u} = 931\ \text{MeV/c}^2 \\ \Rightarrow \ 1\ u = \frac{MeV}{c^2} \\ \Rightarrow \ 1\ \text{u} \cdot c^2 = 931\ \text{MeV} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Substitution des masses
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q =\\ [130,906 \\ - 0,000549]\ \text{u}  \cdot c^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 8 : Application numérique finale (forme approximée)
          tex(
            math:
                r"\begin{array}{l} Q =\\ [130,906 \\ - 0,000549] \cdot 931\ \text{MeV} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
