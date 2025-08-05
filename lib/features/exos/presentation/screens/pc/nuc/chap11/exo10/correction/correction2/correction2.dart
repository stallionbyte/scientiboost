import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,
          sbTxt(
            txt:
                "Par définition, l'énergie de liaison par nucléon d'un noyau est l'énergie necessaire pour lui arracher un nucléon. Comme un proton est un nucléon, pour arracher un proton à un noyau, il faut lui fournir son énergie de liaison par nucléon. \n\n Pour arracher un proton à un noyau de lithium-7 il faut lui fournir 5.38 MeV",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
