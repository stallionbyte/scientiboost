import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Donnees extends ConsumerWidget {
  const Donnees({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransitionConstants.donnees,
        EspConstants.esp40,
        tex(math: r"M(NaOH) = 40,0\\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(Ca(OH)_2) = 74,1\\ g/mol"),
        EspConstants.esp40,
        sbTxt(txt: "Hydroxyde de sodium : monobase forte"),
        EspConstants.esp40,
        sbTxt(txt: "Hydroxyde de calcium : dibase forte"),
        EspConstants.esp40,
        tex(
          math: r"C_{commerciale} = \frac{\rho \times \%}{M(Ca(OH)_2)}",
          scale: 3.0,
        ),
      ],
    );
  }
}
