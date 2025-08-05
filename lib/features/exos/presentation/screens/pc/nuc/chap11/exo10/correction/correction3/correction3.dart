import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
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
                "Par définition, l'énergie de liaison par nucléon d'un noyau est l'énergie necessaire pour lui arracher un nucléon. Comme un neutron est un nucléon, pour arracher un neutron à un noyau, il faut lui fournir son énergie de liaison par nucléon. \n\n Pour arracher un neutron à un noyau de lithium-7 il faut lui fournir 5.38 MeV",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
