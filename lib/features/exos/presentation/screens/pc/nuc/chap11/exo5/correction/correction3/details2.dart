import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
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
                r"\begin{array}{l} m(_{Z}^{A}X) = Z \cdot m_p \\ + (A-Z) \cdot m_n - \frac{E_l}{c^2} \end{array}",
            scale: 4.0,
          ),

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

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_p(proton) = \\ " +
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"MeV/c^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_n(neutron) = \\ " +
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"MeV/c^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          TransitionConstants.deuxiemement,

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math: r"\frac{E_l}{c^2} = \frac{448\ MeV}{c^2} ",
            scale: 2.0,
          ),

          EspConstants.esp40,

          buildTex2SvgInRichText(
            math: r"\frac{E_l}{c^2} = 448\ MeV/c^2 ",
            scale: 2.0,
          ),

          EspConstants.esp40,

          TransitionConstants.ainsi,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m(_{26}^{56}Fe) =\\ 26 \cdot " +
                PhyNucData.valueMasseProtonEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ MeV/c^2" +
                r" \\ + (56-26) \cdot " +
                PhyNucData.valueMasseNeutronEnU +
                r"\cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"\ MeV/c^2" +
                r"\\ - 448 \ MeV/c^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
