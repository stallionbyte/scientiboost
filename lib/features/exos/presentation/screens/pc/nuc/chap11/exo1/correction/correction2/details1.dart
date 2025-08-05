import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          tex(
            math:
                r"\begin{array}{l} m( noyau ) = \\ m( atome ) - m( électrons ) \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m( électrons ) = \\ nombre\ d'électrons \\ \times masse\ d'un\ électron \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          transition(
            transition:
                "l'atome est électriquement neutre donc le nombre d'électrons est égale au nombre de proton(Z)",
          ),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m( électrons ) = \\ Z \cdot masse\ d'un\ électron \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m( noyau ) = \\ m( atome ) \\ - Z \cdot masse\ d'un\ électron \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
