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
          transition(transition: "Vitesse dans un MRUV"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v(t) = v_0 + a \cdot t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Vitesse initiale"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_0 = 0\ \text{m/s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Accélération le long de la pente"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} a = 2{,}54\ \text{m/s}^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'équation horaire de vitesse"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v(t) = 0 + 2{,}54 \cdot t \\ \Rightarrow v(t) = 2{,}54t \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
