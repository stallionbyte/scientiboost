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
            transition: "Application de la conservation de la charge Z",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} Z_{initial} = Z_{final} \end{array}"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 4 \times 1 = 2 + x \times 1 + 2 \times 0 \end{array}",
          ),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} 4 = 2 + x \end{array}"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} x = 4 - 2 = 2 \end{array}"),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
