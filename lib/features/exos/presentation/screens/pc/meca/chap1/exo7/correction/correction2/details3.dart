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
            math:
                r"\begin{array}{l} v_{final} - v_{initiale} = a_3t_3 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{final} = v_{initiale} + a_3t_3 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  v_{initiale} + a_3t_3 = v_{final} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  a_3t_3 = v_{final} -v_{initiale} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{initiale} = 22,22\ m/s \\  v_{final} = 0 \\ t_3 = 3\ min = 3 \times 60\ s \\ t = 240\ s \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ a_3 = \frac{v_{final} - v_{initiale}}{t_3} \\ = \frac{ 0 - 22{,}22}{240} \\ = -0{,}123\ \text{m/s}^2 \end{array}",
            scale: 8.0,
          ),
        ],
      ),
    );
  }
}
