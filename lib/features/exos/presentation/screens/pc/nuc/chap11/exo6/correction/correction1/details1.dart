import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          energieDeLiaisonParNucleon(scale: 6.0),

          EspConstants.esp80,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ A \cdot E_{l/nuc} = [Z \cdot m_p \\ + (A-Z) \cdot m_n \\ - m(_{Z}^{A}X)] \cdot c^2 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp80,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A \cdot E_{l/nuc}}{c^2} = Z \cdot m_p \\ + (A-Z) \cdot m_n \\ - m(_{Z}^{A}X) \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp80,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A \cdot E_{l/nuc}}{c^2} + m(_{Z}^{A}X) \\ = Z \cdot m_p \\ + (A-Z) \cdot m_n \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp80,

          buildTex2SvgInRichText(
            math:
                r"\begin{array}{l} \Rightarrow \ m(_{Z}^{A}X) = Z \cdot m_p \\ + (A-Z) \cdot m_n \\ - \frac{A \cdot E_{l/nuc}}{c^2} \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
