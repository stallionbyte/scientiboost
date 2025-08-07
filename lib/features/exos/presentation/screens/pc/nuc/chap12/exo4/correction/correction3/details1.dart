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
          // Conversion de λ de min⁻¹ en s⁻¹
          tex(
            math: r"\lambda = 6,31 \times 10^{-3} \ \text{min}^{-1}",
            scale: 2.0,
          ),
          sbTxt(txt: "( Calculé à la question 2) )"),
          EspConstants.esp40,

          tex(math: r"1 \ \text{minute} = 60 \ \text{secondes}", scale: 2.0),
          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \frac{1}{1 \ \text{min}} = \frac{1}{60 \ \text{s}}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \text{min}^{-1} = \frac{1}{60} \ \text{s}^{-1}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \lambda = 6,31 \times 10^{-3} \times \frac{1}{60} \ \text{s}^{-1}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \lambda = \frac{6,31 \times 10^{-3}}{60} \ \text{s}^{-1}",
            scale: 2.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \lambda = 1,05 \times 10^{-4} \ \text{s}^{-1}",
            scale: 2.0,
          ),
        ],
      ),
    );
  }
}
