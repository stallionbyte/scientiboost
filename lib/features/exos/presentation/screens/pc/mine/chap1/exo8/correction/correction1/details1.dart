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
          tex(math: r"K_2SO_4 \text{ contient :}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"2 \text{ atomes de K}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"1 \text{ atome de S}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"4 \text{ atomes de O}", scale: 2.5),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M_{K_2SO_4} = \\ 2 \times M_K + M_S \\ + 4 \times M_O \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
