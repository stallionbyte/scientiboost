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
          EspConstants.esp20,

          sbTxt(
            txt:
                "Un neutron est un nucléon, donc pour extraire un neutron d'un noyau, il faut fournir à ce noyau son énergie de liaison par nuléon. \n \n Par conséquant pour extraire un neutron d'un noyau d'oxygène-16, il faut lui fournir 7,45 MeV",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
