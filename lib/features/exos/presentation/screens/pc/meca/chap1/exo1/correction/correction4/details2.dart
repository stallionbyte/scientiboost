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
          transition(transition: "Conversion m/s vers km/h"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1\ \text{m/s} = 3{,}6\ \text{km/h} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          regleDe3(
            part1: r"1\ \text{m/s}",
            part2: r"3{,}6\ \text{km/h}",
            part3: r"40\ \text{m/s}",
            left: r"v_2",
            wrap: true,
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
