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
          transition(transition: "masse restante"),
          EspConstants.esp20,
          tex(math: r"m = \frac{m_0}{2^{\frac{t}{T}}}", scale: 3.0),
          EspConstants.esp80,

          transition(transition: "remarque"),
          EspConstants.esp20,
          tex(
            math:
                r"\begin{array}{l} T =  24100\ \text{ans} \\ t = 48200\ \text{ans} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp20,

          tex(math: r"\Rightarrow \ t = 2T", scale: 1.0),
          EspConstants.esp80,

          tex(
            math: r"\Rightarrow m = \frac{m_0}{2^{\frac{2T}{T}}}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(math: r"\Rightarrow m = \frac{m_0}{2^2}", scale: 3.0),
          EspConstants.esp80,

          tex(math: r"\Rightarrow m = \frac{m_0}{4}", scale: 3.0),
        ],
      ),
    );
  }
}
