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
          tex(math: r"\text{Lors de la dilution :}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"n_{initial} = n_{final}", scale: 2.5),

          EspConstants.esp40,

          tex(
            math: r"C_{S1} \times V_{S1} = C_{S'1} \times V_{S'1}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math: r"C_{S'1} = \frac{C_{S1} \times V_{S1}}{V_{S'1}}",
            scale: 2.5,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
