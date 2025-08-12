import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "L'énergie totale est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} =\\ N_{réactions} \times Q_{par\ réaction} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Chaque noyau d'uranium subit une fission"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} N_{réactions} = N_{^{233}U} \end{array}",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
