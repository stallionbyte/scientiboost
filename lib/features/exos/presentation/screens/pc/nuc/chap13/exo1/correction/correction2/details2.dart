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
            math: r"\begin{array}{l} \Delta m = 0,18341\ u \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1\ u = 1,66054 \times 10^{-27}\ kg \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} c = 3,00 \times 10^8\ m/s \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q_{par\ fission} = 0,18341 \\ \times 1,66054 \times 10^{-27} \\ \times (3,00 \times 10^8)^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
