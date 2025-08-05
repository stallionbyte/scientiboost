import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';
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
          activiteAvecLambdaNoTemps(scale: 2.0),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A}{\lambda \cdot N_0} = e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{A}{\lambda \cdot N_0}\right) = \ln(e^{-\lambda t}) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{A}{\lambda \cdot N_0}\right) = -\lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln\left(\frac{A}{\lambda \cdot N_0}\right)}{-\lambda} = t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln\left(\frac{A}{\lambda \cdot N_0}\right) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
