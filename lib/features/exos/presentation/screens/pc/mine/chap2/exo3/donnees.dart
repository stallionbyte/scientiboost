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
        tex(math: r"M(H_2SO_4) = 98,0\ g/mol"),
        EspConstants.esp40,
        tex(math: r"\rho(H_2SO_4\ pur) = 1,84\ g/mL"),
        EspConstants.esp40,
        sbTxt(txt: "Acide sulfurique : considéré comme un diacide fort"),
      ],
    );
  }
}
