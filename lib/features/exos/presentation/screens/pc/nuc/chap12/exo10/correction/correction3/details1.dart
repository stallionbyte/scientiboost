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
                r"\begin{array}{l} N(t) =\\ N_0 \times e^{-\lambda t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          transition(transition: "Avec la relation entre λ et T"),
          EspConstants.esp80,

          tex(
            math: r"\begin{array}{l} \lambda = \frac{\ln 2}{T} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N(t) =\\ N_0 \times e^{-\frac{\ln 2}{T} \times t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          transition(transition: "On pose t = nT"),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N(nT) =\\ N_0 \times e^{-\frac{\ln 2}{T} \times nT} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N =\\ N_0 \times e^{-n \ln 2} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N =\\ N_0 \times (e^{\ln 2})^{-n} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N =\\ N_0 \times 2^{-n} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N =\\ N_0 \times \left(\frac{1}{2}\right)^n \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
