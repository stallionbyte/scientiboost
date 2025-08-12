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
          transition(transition: "Résolution de l'équation"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t(1{,}25t - 20) = 0 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Deux solutions possibles"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t = 0 \quad \text{ou}  \\   1{,}25t - 20 = 0 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          transition(transition: "La solution t = 0 correspond au départ"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1{,}25t - 20 = 0 \\ \Rightarrow 1{,}25t = 20 \\ \Rightarrow t = \frac{20}{1{,}25} \\ \Rightarrow t = 16\ \text{s} \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
