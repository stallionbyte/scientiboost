import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
                r"\begin{array}{l} m(_{Z}^{A}X) = - \Delta m(_{Z}^{A}X) \\ + \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          TransitionConstants.premierement,

          EspConstants.esp40,

          // Displaying the mass defect of Technetium-99
          buildTex2SvgInRichText(
            math: r"\Delta m(_{43}^{99}Tc) = 8,61 \cdot 10^{-28} \, kg",
            scale: 3.0,
          ),

          EspConstants.esp40,

          // Explaining the next step: recalling fundamental constants
          TransitionConstants.deuxiemement,

          EspConstants.esp40,

          // Displaying the masses of proton, neutron, and the atomic mass unit value
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_p = 1,007276 \, u \\ m_n = 1,008665 \, u \\ 1 \, u = 1,66 \cdot 10^{-27} \, kg \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          // Explaining the conversion to kilograms
          TransitionConstants.dou,

          EspConstants.esp40,

          // Displaying the converted masses
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_p = 1,007276 \cdot 1,66 \cdot 10^{-27} \, kg \\ m_n = 1,008665 \cdot 1,66 \cdot 10^{-27} \, kg \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          // Final step: the numerical application
          TransitionConstants.ainsi,

          EspConstants.esp40,

          // Displaying the final calculation by substituting all the values
          buildTex2SvgInRichText(
            // The calculation is broken into multiple lines using a LaTeX array for better readability.
            math:
                r"\begin{array}{l} m(_{43}^{99}Tc) = - 8,61 \cdot 10^{-28} \\ + \left( \begin{array}{l} 43 \cdot 1,007276 \cdot 1,66 \cdot 10^{-27} \\ + (99-43) \cdot 1,008665 \cdot 1,66 \cdot 10^{-27} \end{array} \right) \end{array}",
            scale: 2.4, // Adjusted scale for fitting the complex formula
          ),
        ],
      ),
    );
  }
}
