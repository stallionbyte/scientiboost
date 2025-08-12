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
          transition(transition: "Équation horaire de vitesse du motocycliste"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(t) = 2{,}5t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Au moment du rattrapage"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t = 16\ \text{s} \end{array}",
            scale: 1.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution dans l'équation de vitesse"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_2(16) = 2{,}5 \times 16 \\ \Rightarrow v_2(16) = 40\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
