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
          transition(transition: "À t = 3T, on a n = 3"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N = N_0 \times \left(\frac{1}{2}\right)^n \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N = N_0 \times \left(\frac{1}{2}\right)^3 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N = N_0 \times \frac{1}{8} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
