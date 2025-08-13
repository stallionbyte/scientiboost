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
          transition(transition: "Rappel des temps"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \text{Phase 1 : } 0 \leq t \leq 8\ \text{s} \\ \text{Phase 2 : début à } t = 8\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Durée du freinage"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t'_{arrêt} = 3{,}91\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Instant total depuis le début"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t_{total} = t_{phase1} + t'_{arrêt} \\ = 8 + 3{,}91 \\ = 11{,}91\ \text{s} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
