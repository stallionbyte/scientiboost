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
          transition(transition: "Équation de position"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} y_1(t) = 35t - 4{,}9t^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Temps au point culminant"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{max} = 3{,}57\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Substitution"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} y_{max} = 35 \times 3{,}57 \\ - 4{,}9 \times (3{,}57)^2 \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
