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
          transition(
            transition:
                "L'énergie libérée est la différence entre les énergies de liaison finales et initiales",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = \sum E_l(produits) \\ - \sum E_l(réactifs) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "L'énergie de liaison d'un noyau est"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} E_l = A \times (E_{l/n}) \end{array}"),
          EspConstants.esp40,

          transition(transition: "Pour les produits"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(produits) = E_l(^{90}Rb) \\ + E_l(^{142}Cs) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(produits) = 90E_{l/n}(^{90}Rb) \\ + 142E_{l/n}(^{142}Cs) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Pour les réactifs"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(réactifs) = E_l(^{233}U) \\ + E_l(^1n) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(réactifs) = 233E_{l/n}(^{233}U) \\ + 1E_{l/n}(^1n) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \sum E_l(réactifs) = 233E_{l/n}(^{233}U) \\ + 0 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = [90E_{l/n}(^{90}Rb) \\ + 142E_{l/n}(^{142}Cs)] \\ - 233E_{l/n}(^{233}U) \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
