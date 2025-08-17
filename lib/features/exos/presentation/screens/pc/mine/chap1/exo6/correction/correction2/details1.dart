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
          tex(math: r"Fe_2(SO_4)_3 \text{ contient :}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"2 \text{ atomes de Fe}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"3 \text{ groupes } SO_4", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"3 \times 1 = 3 \text{ atomes de S}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"3 \times 4 = 12 \text{ atomes de O}", scale: 2.5),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M_{Fe_2(SO_4)_3} = \\ 2 \times M_{Fe} + 3 \times M_S \\ + 12 \times M_O \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
