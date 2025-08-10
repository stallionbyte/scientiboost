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
          // Raisonnement détaillé : Fission du thorium-232 avec neutron

          // Étape 1 : Équation de départ de la fission
          tex(
            math:
                r"\begin{array}{l} _{90}^{232}Th + _{0}^{1}n \longrightarrow _{38}^{x}Sr \\ + _{y}^{144}Te + _{0}^{1}n \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          // Étape 2 : Énoncé de la loi de conservation du nombre de masse
          transition(
            transition: "Selon la loi de conservation du nombre de masse",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum A_{initial} = \sum A_{final} \end{array}",
          ),
          EspConstants.esp40,

          // Étape 3 : Écriture de l'équation pour la conservation de A
          tex(math: r"\begin{array}{l} 232 + 1 = x + 144 + 1 \end{array}"),
          EspConstants.esp40,

          // Étape 4 : Simplification
          tex(math: r"\begin{array}{l} 233 = x + 145 \end{array}"),
          EspConstants.esp40,

          // Étape 5 : Résolution pour x
          tex(
            math: r"\begin{array}{l} \Rightarrow \ x = 233 - 145 \end{array}",
          ),
          EspConstants.esp40,

          // Étape 6 : Résultat pour x
          tex(math: r"\begin{array}{l} \Rightarrow \ x = 88 \end{array}"),
          EspConstants.esp40,

          // Étape 7 : Énoncé de la loi de conservation du nombre de charge
          transition(
            transition: "Selon la loi de conservation du nombre de charge",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum Z_{initial} = \sum Z_{final} \end{array}",
          ),
          EspConstants.esp40,

          // Étape 8 : Écriture de l'équation pour la conservation de Z
          tex(math: r"\begin{array}{l} 90 + 0 = 38 + y + 0 \end{array}"),
          EspConstants.esp40,

          // Étape 9 : Simplification
          tex(math: r"\begin{array}{l} 90 = 38 + y \end{array}"),
          EspConstants.esp40,

          // Étape 10 : Résolution pour y
          tex(math: r"\begin{array}{l} \Rightarrow \ y = 90 - 38 \end{array}"),
          EspConstants.esp40,

          // Étape 11 : Résultat pour y
          tex(math: r"\begin{array}{l} \Rightarrow \ y = 52 \end{array}"),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
