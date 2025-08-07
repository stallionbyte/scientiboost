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
          // Raisonnement détaillé : Déterminer Z et A pour l'oxygène

          // Étape 1 : Équation avec inconnues
          tex(
            math:
                r"\begin{array}{l} _{9}^{18}F \longrightarrow _{Z}^{A}O + _{1}^{0}e + _{0}^{0}\nu \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          // Étape 2 : Conservation du nombre de masse
          transition(
            transition: "Selon la loi de conservation du nombre de masse",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum A_{initial} = \sum A_{final} \end{array}",
          ),
          EspConstants.esp40,

          // Étape 3 : Application pour A
          tex(math: r"\begin{array}{l} 18 = A + 0 + 0 \end{array}"),
          EspConstants.esp40,

          // Étape 4 : Résultat pour A
          tex(math: r"\begin{array}{l} \Rightarrow \ A = 18 \end{array}"),
          EspConstants.esp40,

          // Étape 5 : Conservation de la charge
          transition(
            transition: "Selon la loi de conservation du nombre de charge",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum Z_{initial} = \sum Z_{final} \end{array}",
          ),
          EspConstants.esp40,

          // Étape 6 : Application pour Z
          tex(math: r"\begin{array}{l} 9 = Z + 1 + 0 \end{array}"),
          EspConstants.esp40,

          // Étape 7 : Résultat pour Z
          tex(math: r"\begin{array}{l} \Rightarrow \ Z = 9 - 1 \end{array}"),
          EspConstants.esp40,

          // Étape 8 : Valeur finale de Z
          tex(math: r"\begin{array}{l} \Rightarrow \ Z = 8 \end{array}"),
          EspConstants.esp40,

          sbTxt(txt: "Le numéro atomique Z = 8 correspond à l'oxygène (O)."),
        ],
      ),
    );
  }
}
