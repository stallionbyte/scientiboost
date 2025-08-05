import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';

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
          defautDeMasse(scale: 5.0),
          EspConstants.esp40,
          TransitionConstants.premierement,
          EspConstants.esp40,
          PhyNucData.masseProtonEnU,
          EspConstants.esp40,
          PhyNucData.masseNeutronEnU,
          EspConstants.esp40,
          PhyNucData.uEnMeVC2,
          EspConstants.esp40,
          TransitionConstants.dou,
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} m_p(proton) = \\ " +
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ MeV/c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} m_n(neutron) = \\ " +
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ MeV/c^2 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          TransitionConstants.deuxiemement,
          EspConstants.esp40,
          tex(math: r"m(_{60}^{144}Nd) = 134032,65\ MeV/c^2", scale: 2.0),
          EspConstants.esp40,
          TransitionConstants.ainsi,
          EspConstants.esp40,
          defautDeMasse(
            wrap: true,
            X: r"Nd",
            Z: r"60",
            A: r"144",
            mp:
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2,
            mn:
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2,
            masseNoyau: r"134032,65",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
