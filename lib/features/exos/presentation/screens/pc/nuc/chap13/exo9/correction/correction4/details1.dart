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
            transition: "Chaque réaction convertit une masse Δm en énergie",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m_{par\ réaction} =\\ 5,04 \times 10^{-29}\ kg \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "Nombre de réactions par seconde"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N = 3,8 \times 10^{38}\ s^{-1} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,

          transition(transition: "La perte de masse totale par seconde est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m_{par\ s} =\\ N \times \Delta m_{par\ réaction} \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
