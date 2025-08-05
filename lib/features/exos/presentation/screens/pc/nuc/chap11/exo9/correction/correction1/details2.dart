import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tex(
            math:
                r"\begin{array}{l} E_{l/nuc} = \frac{\Delta m \cdot c^2}{A} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \text{Nucléide : } ^{12}C \\ A = 12 \text{ (nucléons)} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \frac{\Delta m \cdot c^2}{12} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Delta m(^{12}C) = 0,09892 \text{ u} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \frac{0,09892 \text{ u} \cdot c^2}{12} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp40,
          tex(
            math: r"\begin{array}{l} 1\ u = 931,5\ MeV/c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math: r"\begin{array}{l} 1\ u = \frac{931,5\ MeV}{c^2} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} 1\ u \cdot c^2 = 931,5 \text{ MeV} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} =\\ \frac{0,09892 \cdot 931,5 \text{ MeV}}{12} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
