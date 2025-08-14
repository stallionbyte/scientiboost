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
          transition(transition: "Distance à vitesse constante"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} d = v \times t \end{array}", scale: 3.0),
          EspConstants.esp40,

          transition(transition: "Avec"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v = v_{max} = 22{,}22\ \text{m/s} \\ t_2 = 18\ min = 1080\ \text{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Application"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_2 = 22{,}22 \times 1080 \\ = 23997,6\ \text{m} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
