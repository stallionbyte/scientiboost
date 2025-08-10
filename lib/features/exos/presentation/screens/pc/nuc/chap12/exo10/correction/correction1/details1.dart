import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          tex(
            math:
                r"\begin{array}{l} _{88}^{226}Ra \longrightarrow _{86}^{222}Rn + _2^4He \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          transition(
            transition:
                "La perte de masse correspond à la différence entre la masse initiale et la masse finale",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = m_{initial} - m_{final} \end{array}",
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = m(_{88}^{226}Ra) \\ - [m(_{86}^{222}Rn) + m_{\alpha}] \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
