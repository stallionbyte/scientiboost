import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
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
                r"\begin{array}{l} \frac{E_{fusion}}{E_{fission}} = \frac{7,90 \times 10^{13}}{7,23 \times 10^{13}} = 1,09 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{fusion} = 1,09 \cdot E_{fission} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          transition(transition: "conclusion :"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "La fusion de 1 kg de deutérium libère à peu près la même quantité d'énergie que la fission de 1 kg d'U-233.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
