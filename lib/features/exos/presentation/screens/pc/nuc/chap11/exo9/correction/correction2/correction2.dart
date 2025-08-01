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
          EspConstants.esp20,

          sbTxt(
            txt:
                "Un proton est un nucléon, donc pour extraire un proton d'un noyau, il faut fournir à ce noyau son énergie de liaison par nuléon. \n \n Par conséquant pour extraire un proton d'un noyau d'oxygène-16, il faut lui fournir 7,45 MeV",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
