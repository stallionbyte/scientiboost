import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details3 extends ConsumerStatefulWidget {
  const Details3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details3State();
}

class _Details3State extends ConsumerState<Details3> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(
            math: r"\begin{array}{l} Q = \Delta m \times c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \Delta m = 0,00351\ u \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(math: r"1\ u = 931,5\ \text{MeV}/c^2", scale: 3.0),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q =\\ 0,00351 \cdot 931,5\ \text{MeV}/c^2 \cdot c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q =\\ 0,00351 \cdot 931,5\ \frac{MeV}{c^2} \cdot c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q =\\ 0,00351 \cdot 931,5\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
