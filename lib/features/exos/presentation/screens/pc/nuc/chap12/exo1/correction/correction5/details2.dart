import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          tex(
            math: r"\begin{array}{l} 1\ an = 365,25\ jours \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 1\ an = 365,25 \times 24\ heures \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 1\ an =\\ 365,25 \times 24 \times 3600\ secondes \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 1\ an = 31\ 557\ 600\ s \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          regleDe3(
            part1: r"31\ 557\ 600\ s",
            part2: r"1\ an",
            part3: r"2,41 \cdot 10^{11} \ s",
            left: r"t",
            wrap: true,
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
