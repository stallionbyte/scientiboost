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
            math: r"\begin{array}{l} \Delta m = 0,005229\ \text{u} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1\ \text{u} = 1,66 \times 10^{-27}\ \text{kg} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} c = 3 \times 10^8\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = 0,005229 \\ \times 1,66 \times 10^{-27} \times (3 \times 10^8)^2 \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
