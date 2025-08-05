import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{m(\text{électrons})}{m(\text{atome})} = \\ \frac{3,92 \times 10^{-29}}{1,644 \times 10^{-25}} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{m(\text{électrons})}{m(\text{atome})} = \\ 2,38 \times 10^{-4} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          transition(transition: "En pourcentage"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{m(\text{électrons})}{m(\text{atome})} = \\ 2,38 \times 10^{-4} \times 100\% \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{m(\text{électrons})}{m(\text{atome})} = 0,024\% \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          transition(transition: "Interprétation physique"),

          EspConstants.esp20,

          sbTxt(
            txt:
                "Les électrons ne contribuent qu'à 0,024% de la masse totale de l'atome \n \n",
          ),

          sbTxt(txt: "la masse de l'atome est concentrée dans son noyau"),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
