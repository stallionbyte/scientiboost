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
        tex(math: r"M(Na) = 23,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(O) = 16,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(H) = 1,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(Al) = 27,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"M(S) = 32,1\ g/mol"),
        EspConstants.esp40,

        tex(math: r"C_{S1} = \frac{\rho \times \% }{M_{NaOH}}", scale: 3.0),
      ],
    );
  }
}
