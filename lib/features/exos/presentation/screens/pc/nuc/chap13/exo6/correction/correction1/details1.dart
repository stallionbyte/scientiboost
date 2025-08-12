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
          transition(
            transition: "Application de la conservation du nombre de masse A",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A_{initial} = A_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 235 + 1 = 144 + A + 3 \times 1 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 236 = 144 + A + 3 \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} A = 236 - 144 - 3 = 89 \end{array}"),
          EspConstants.esp40,

          transition(
            transition: "Application de la conservation du numéro atomique Z",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 92 + 0 = 56 + Z + 2 \times 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 92 = 56 + Z \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z = 92 - 56 = 36 \end{array}"),
        ],
      ),
    );
  }
}
