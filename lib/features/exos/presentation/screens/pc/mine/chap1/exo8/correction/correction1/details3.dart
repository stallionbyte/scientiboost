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
          tex(math: r"AlCl_3 \text{ contient :}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"1 \text{ atome de Al}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"3 \text{ atomes de Cl}", scale: 2.5),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} M_{AlCl_3} = \\ M_{Al} + 3 \times M_{Cl} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
