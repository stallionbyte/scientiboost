import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details3 extends ConsumerStatefulWidget {
  const Details3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details3State();
}

class _Details3State extends ConsumerState<Details3> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          transition(transition: "Calcul de l'accélération"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_{max} - v_{1,0} = a_1t_1 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ v_{max} = v_{1,0} + a_1t_1 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  v_{1,0} + a_1t_1 = v_{max} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  a_1t_1 = v_{max} -v_{1,0} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ a_1 = \frac{v_{max} - v_{1,0}}{t_1} \\ = \frac{22{,}22 - 0}{240} \\ = 0{,}0926\ \text{m/s}^2 \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
