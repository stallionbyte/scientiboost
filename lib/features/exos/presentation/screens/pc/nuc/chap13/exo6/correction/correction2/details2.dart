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
          tex(
            math: r"\begin{array}{l} Q = \Delta m \times c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \Delta m = 0,18603\ u \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(math: r"1\ u = 931,5\ MeV/c^2", scale: 3.0),
          EspConstants.esp40,

          tex(math: r"1\ u = 931,5\ \frac{MeV}{c^2}", scale: 3.0),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = 0,18603 \cdot 931,5\ \frac{MeV}{c^2} \cdot c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} Q = 0,18603 \cdot 931,5\ MeV \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
