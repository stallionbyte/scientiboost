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
                "L'énergie totale est le produit de l'énergie par fission et du nombre de fissions",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = N_{fissions} \cdot Q \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(
            transition:
                "Le nombre de fissions égale le nombre de noyaux de thorium",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} N_{fissions} = N_{noyaux} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  N_{fissions} = n \cdot \mathcal{N_A} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  N_{fissions} = \frac{m}{M} \cdot \mathcal{N_A} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{totale} = \frac{m}{M} \cdot \mathcal{N_A} \cdot Q \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
