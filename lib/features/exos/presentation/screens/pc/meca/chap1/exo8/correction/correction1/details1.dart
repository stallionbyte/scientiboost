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
          transition(transition: "Composition du rayon orbital"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} r = \text{distance du centre} \\ \text{de la Terre au satellite} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Décomposition"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} r = R_{\text{Terre}} + h \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
