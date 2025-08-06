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
                r"\begin{array}{l} \Rightarrow \ \lambda = 8,55 \cdot 10^{-2}\ j^{-1} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 1\ jour = 24\ heures \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 1\ jour = 24 \times 3600\ secondes \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 1\ jour = 86\ 400\ s \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{1}{1\ jour}  = \frac{1}{86\ 400} \ \frac{1}{s} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow jour^{-1} = \frac{1}{86\ 400} \  s^{-1} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \lambda = 8,55 \cdot 10^{-2} \times \frac{1}{86400} \ s^{-1} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \lambda = \frac{8,55 \cdot 10^{-2}}{86400} \ s^{-1} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \lambda = 9,89 \times 10^{-7}\ s^{-1} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
