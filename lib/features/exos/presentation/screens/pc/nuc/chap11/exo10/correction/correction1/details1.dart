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
          tex(
            math:
                r"\begin{array}{l} \text{Isotope : } _{3}^{7}Li \\ Z = 3 \text{ (protons)} \\ A = 7 \text{ (nucléons)} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [3 \cdot m_p + (7-3) \cdot m_n \\ - m(_{3}^{7}Li)] \cdot c^2 \end{array}}{7} \end{array}",
            scale: 7.0,
          ),

          EspConstants.esp80,
          tex(
            math:
                r"\begin{array}{l} m_p = 1,007276 \text{ u} \\ m_n = 1,008665 \text{ u} \\ m(_{3}^{7}Li) = 7,01600 \text{ u} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} =\\ \frac{\begin{array}{l} [ 3 \cdot 1,007276\ u \\ + (7-3) \cdot 1,008665\ u \\ - 7,01600\ u] \cdot c^2 \end{array}}{7} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} =\\ \frac{\begin{array}{l} [3 \cdot 1,007276 \\ + (7-3) \cdot 1,008665 \\ - 7,01600]u \cdot c^2 \end{array}}{7} \end{array}",
            scale: 7.0,
          ),

          EspConstants.esp80,
          tex(
            math: r"\begin{array}{l} 1\ u = 931,5\ MeV/c^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          tex(
            math: r"\begin{array}{l} 1\ u = \frac{931,5\ MeV}{c^2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          tex(
            math:
                r"\begin{array}{l} 1\ u \cdot c^2 = 931,5 \text{ MeV} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp80,
          energieDeLiaisonParNucleon(
            entraineQue: true,
            wrap: true,
            scale: 7.0,
            X: r"Li",
            Z: r"3",
            A: r"7",
            mp: PhyNucData.valueMasseProtonEnU,
            mn: PhyNucData.valueMasseNeutronEnU,
            masseNoyau: r"7,01600",
            uEnMeVC2: PhyNucData.valueUEnMeVC2,
          ),
        ],
      ),
    );
  }
}
