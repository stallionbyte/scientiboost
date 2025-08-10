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
          transition(transition: "L'énergie totale pour 1 mole est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = E_{par\ réaction} \times N_{réactions} \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"(E_{par\ réaction} = Q)"),

          EspConstants.esp40,

          transition(transition: "Pour 1 mole, le nombre de réactions est"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} N_{réactions} = \mathcal{N_A} \end{array}",
          ),
          EspConstants.esp40,

          transition(transition: "D'où"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = Q \times \mathcal{N_A} \end{array}",
          ),
        ],
      ),
    );
  }
}
