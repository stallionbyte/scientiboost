import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,

          sbTxt(txt: "m(nucléons) = masse(neutrons) + masse(protons)"),

          EspConstants.esp20,

          sbTxt(txt: "masse(protons) = nombre de protons x masse d'un proton"),

          EspConstants.esp20,

          expression(left: r"masse(protons)", rightTex2SvgMath: r"Z \cdot m_p"),

          EspConstants.esp20,

          sbTxt(
            txt: "masse(neutrons) = nombre de neutrons x masse d'un neutron",
          ),

          EspConstants.esp20,

          expression(
            left: r"masse(neutrons)",
            rightTex2SvgMath: r"(A-Z) \cdot m_n",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: expression(
              left: r"masse(nucléons)",
              rightTex2SvgMath: r"Z \cdot m_p + (A-Z) \cdot m_n",
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          expression(
            left: r"masse(nucléons)",
            right:
                "${PhyNucValuesConstants.masseProtonEnU} + (14 - 6) x ${PhyNucValuesConstants.masseNeutronEnU}",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              value: "14,112976",
              left: "masse(nucléons)",
              unit: "u",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
