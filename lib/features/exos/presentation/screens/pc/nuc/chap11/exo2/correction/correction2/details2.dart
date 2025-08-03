import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m(\text{électrons}) = \\ Z \times m_e \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          TransitionConstants.premierement,

          EspConstants.esp40,

          buildTex2SvgInRichText(math: r"\begin{array}{l} Z = 43 \end{array}"),

          EspConstants.esp40,

          TransitionConstants.deuxiemement,

          EspConstants.esp40,

          PhyNucData.masseElectronEnU,

          EspConstants.esp40,

          PhyNucData.uEnKg,

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_e = " +
                PhyNucData.valueMasseElectronEnU +
                r"\cdot" +
                PhyNucData.valueUEnKgTexMath +
                r" \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          TransitionConstants.ainsi,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m(\text{électrons}) = \\ 43 \times " +
                PhyNucData.valueMasseElectronEnU +
                r"\cdot" +
                PhyNucData.valueUEnKgTexMath +
                r" \end{array}",
            scale: 2.5,
          ),
        ],
      ),
    );
  }
}
