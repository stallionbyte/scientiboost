import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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
          defautDeMasse(scale: 6.0),

          EspConstants.esp40,

          transition(transition: 'premièrement'),

          EspConstants.esp40,

          PhyNucData.masseProtonEnU,

          EspConstants.esp40,

          PhyNucData.masseNeutronEnU,

          EspConstants.esp40,

          PhyNucData.uEnKg,

          EspConstants.esp40,

          transition(transition: 'd\'où'),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_p = \\ " +
                PhyNucData.valueMasseProtonEnU +
                r" \cdot 1,66 \cdot 10^{-27} \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_n = \\ " +
                PhyNucData.valueMasseNeutronEnU +
                r" \cdot  1,66 \cdot 10^{-27} \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          transition(transition: 'deuxièmement'),

          EspConstants.esp40,

          tex(
            math: r"m\left(_{92}^{235}U\right) = 3,899 \cdot 10^{-25} \, kg",
            scale: 1.0,
          ),

          EspConstants.esp40,

          transition(transition: 'd\'où'),

          EspConstants.esp40,

          defautDeMasse(
            scale: 6.0,
            X: r"U",
            Z: r"92",
            A: r"235",
            masseNoyau: r"3,899 \cdot 10^{-25}",
            mp:
                PhyNucData.valueMasseProtonEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath,
            mn:
                PhyNucData.valueMasseNeutronEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath,
          ),
        ],
      ),
    );
  }
}
