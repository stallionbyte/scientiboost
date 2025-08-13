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
            transition: "Relation entre fréquence et vitesse angulaire",
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \omega = 2\pi f = 2\pi N \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Avec N la fréquence en tours/s"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N = 1800\ \text{tours/min} \\ N = \frac{1800\ \text{tours}}{1\ \text{min}} \\ N = \frac{1800\ tours}{60\ s} \\ N = 30\ \text{tours/s} \end{array}",
            scale: 8.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \omega = 2\pi \times 30 \\ \omega = 60\pi\ \text{rad/s} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
