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
          sbTxt(
            txt:
                "Pour calculer la masse des électrons, nous utilisons le fait que l'atome est électriquement neutre, donc le nombre des électrons (chargés négativement) est égale au nombre des protons (chargés positivement)",
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(\text{électrons}) = \\ nombre\ des\ électrons \times m_e \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          TransitionConstants.or,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} nombre\ des\ électrons = \\ nombre\ des\ protons \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} nombre\ des\ électrons = Z \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(\text{électrons}) = \\ Z \times m_e \end{array}",
            scale: 2.5,
          ),
        ],
      ),
    );
  }
}
