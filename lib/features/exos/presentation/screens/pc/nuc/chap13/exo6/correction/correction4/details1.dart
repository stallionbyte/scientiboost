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
          transition(transition: "Le rendement de conversion est"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \eta = \frac{E_{élec}}{E_{nucl}} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "D'où l'énergie nucléaire nécessaire"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{nucl} = \frac{E_{élec}}{\eta} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
