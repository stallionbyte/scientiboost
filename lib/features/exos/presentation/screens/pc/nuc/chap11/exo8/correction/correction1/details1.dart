import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          energieDeLiaisonParNucleon(scale: 7.0),
          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \text{Isotope : } _{90}^{232}Th \\ Z = 90 \text{ (protons)} \\ A = 232 \text{ (nucléons)} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [90 \cdot m_p + (232-90) \cdot m_n \\ - m(_{90}^{232}Th)] \cdot c^2 \end{array}}{232} \end{array}",
            scale: 7.0,
          ),

          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} m_p = 1,007276 \text{ u} \\ m_n = 1,008665 \text{ u} \\ m(_{90}^{232}Th) = 232,03805 \text{ u} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} =\\ \frac{\begin{array}{l} [ 90 \cdot 1,007276\ u \\ + (232-90) \cdot 1,008665\ u \\ - 232,03805\ u] \cdot c^2 \end{array}}{232} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} =\\ \frac{\begin{array}{l} [90 \cdot 1,007276 \\ + (232-90) \cdot 1,008665 \\ - 232,03805]u \cdot c^2 \end{array}}{232} \end{array}",
            scale: 7.0,
          ),

          EspConstants.esp80,
          buildTex2SvgInRichText(
            math: r"\begin{array}{l} 1\ u = 931,5\ MeV/c^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          buildTex2SvgInRichText(
            math: r"\begin{array}{l} 1\ u = \frac{931,5\ MeV}{c^2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} 1\ u \cdot c^2 = 931,5 \text{ MeV} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          energieDeLiaisonParNucleon(
            entraineQue: true,
            wrap: true,
            scale: 7.0,
            X: r"Th",
            Z: r"\ 90",
            A: r"232",
            mp: PhyNucData.valueMasseProtonEnU,
            mn: PhyNucData.valueMasseNeutronEnU,
            masseNoyau: r"232,03805",
            uEnMeVC2: PhyNucData.valueUEnMeVC2,
          ),
        ],
      ),
    );
  }
}
