import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details4 extends ConsumerStatefulWidget {
  const Details4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details4State();
}

class _Details4State extends ConsumerState<Details4> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(
            math: r"\begin{array}{l} \Delta m = 0,2095\ u \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = 0,2095 u \times c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 1\ u = 931,5 MeV/c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \   1\ u = 931,5\ \frac{MeV}{c^2} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  1\ u \times c^2 = 931,5\ \text{MeV} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  Q = 0,2095 \times 931,5 \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
