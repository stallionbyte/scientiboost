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
          transition(transition: "Le noyau Sr-96 contient"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} Z = 38\ \text{protons} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N = A - Z \\ N = 96 - 38 = 58\ \text{neutrons} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          transition(transition: "Masse des nucléons séparés"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{\text{nucléons}} = 38 \times m_p \\ + 58 \times m_n \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{\text{nucléons}} = 38 \times 1,00728 \\ + 58 \times 1,00866 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{\text{nucléons}}  = 96,779\ u \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(^{96}Sr) = 96,779 \ u - 0,894 \ u \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
