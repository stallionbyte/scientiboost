import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

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
          constanteRadioactivite(scale: 2.0),

          EspConstants.esp40,

          constanteRadioactivite(scale: 2.0, T: r"109,8", entraineQue: true),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \ \lambda = \frac{0,693}{109,8\ min}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\Rightarrow \ \lambda = 6,31 \times 10^{-3} \ \text{min}^{-1}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Temps écoulé : t = 3 heures"),

          EspConstants.esp40,

          sbTxt(txt: "t = 180 minutes"),

          EspConstants.esp40,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "t est en min et "),

                buildTex2SvgInWidgetSpan(math: r"\lambda", scale: 0.8),

                const TextSpan(text: " est en "),

                buildTex2SvgInWidgetSpan(math: r"min^{-1}", scale: 0.8),

                const TextSpan(text: " on peut faire le calcul "),
              ],
            ),
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N =\\ 8,2 \times 10^{15} \times e^{-6,31 \times 10^{-3} \times 180} \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
