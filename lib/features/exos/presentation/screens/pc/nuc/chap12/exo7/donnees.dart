import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/builders.dart';

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
        notationSymbolique(
          X: r"S",
          Z: r"16",
          A: r"32",
          nomNoyau: "du soufre-32",
        ),
        EspConstants.esp40,
      ],
    );
  }
}
