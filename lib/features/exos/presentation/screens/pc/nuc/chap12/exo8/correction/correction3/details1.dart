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
          tex(
            math:
                r"\begin{array}{l} masse\ disparue (m') =\\ masse\ initiale(m_0) \\ - masse\ restante(m) \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(math: r"masse \ initiale \ :\ m_o"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} masse\ restante:\\ m = m_o\Large{e}^{-\frac{ln2}{T}t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ m' = m_0 - m_o\Large{e}^{-\frac{ln2}{T}t}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ m' = m_0 ( 1 - \Large{e}^{-\frac{ln2}{T}t} )",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
