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
                r"\begin{array}{l} \lambda = 5,63 \cdot 10^{-4}\ min^{-1} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 1\ min = 60 \ s \end{array}",
            scale: 1.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  \frac{1}{min} = \frac{1}{60} \ \frac{1}{s} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  min^{-1} = \frac{1}{60} \ s^{-1} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  \lambda = 5,63 \cdot 10^{-4}\ \frac{1}{60} \ s^{-1} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  \lambda = \frac{5,63 \cdot 10^{-4}}{60} \ s^{-1} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \lambda = 9,38 \cdot 10^{-6} \ s^{-1} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          tex(math: r"\begin{array}{l} t = 907,32 min \end{array}", scale: 1.0),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = 907,32 \cdot 60 \ s \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} \Rightarrow \ t = 54439,2 \ s \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
