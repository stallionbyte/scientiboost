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
          // Raisonnement détaillé : Désintégration α de l'américium-241 avec les lois de conservation

          // Étape 1 : Équation de départ avec noyau fils inconnu
          tex(
            math:
                r"\begin{array}{l} _{95}^{241}Am \longrightarrow _{Z}^{A}Np + _2^4He \end{array}",
            scale: 2.0,
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
          tex(math: r"\begin{array}{l} 241 = A + 4 \end{array}"),
          EspConstants.esp40,

          // Étape 4 : Résolution pour A
          tex(math: r"\begin{array}{l} \Rightarrow \ A = 241 - 4 \end{array}"),
          EspConstants.esp40,

          // Étape 5 : Résultat pour A
          tex(math: r"\begin{array}{l} \Rightarrow \ A = 237 \end{array}"),
          EspConstants.esp40,

          // Étape 6 : Énoncé de la loi de conservation du nombre de charge
          transition(
            transition: "Selon la loi de conservation du nombre de charge",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum Z_{initial} = \sum Z_{final} \end{array}",
          ),
          EspConstants.esp40,

          // Étape 7 : Écriture de l'équation pour la conservation de Z
          tex(math: r"\begin{array}{l} 95 = Z + 2 \end{array}"),
          EspConstants.esp40,

          // Étape 8 : Résolution pour Z
          tex(math: r"\begin{array}{l} \Rightarrow \ Z = 95 - 2 \end{array}"),
          EspConstants.esp40,

          // Étape 9 : Résultat pour Z
          tex(math: r"\begin{array}{l} \Rightarrow \ Z = 93 \end{array}"),
        ],
      ),
    );
  }
}
