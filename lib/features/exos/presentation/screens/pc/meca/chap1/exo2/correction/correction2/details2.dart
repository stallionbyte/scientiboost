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
          transition(transition: "Pour la vitesse dans un MRUV"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t') = v_0 + a \cdot t' \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse au début du freinage"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_{2,0} = 12{,}5\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Décélération"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a_2 = -3{,}2\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire de vitesse"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_2(t') = 12{,}5 + (-3{,}2) \cdot t' \\ \Rightarrow v_2(t') = 12{,}5 - 3{,}2t' \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
