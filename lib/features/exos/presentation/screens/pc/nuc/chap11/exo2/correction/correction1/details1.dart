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
          transition(
            transition: "Partons de la définition du défaut de masse :",
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m(_{Z}^{A}X) = \\ \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \\ - m(_{Z}^{A}X) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          transition(transition: "Réarrangeons pour isoler m(noyau) :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \\ - m(_{Z}^{A}X) = \Delta m(_{Z}^{A}X) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow - m(_{Z}^{A}X) = \Delta m(_{Z}^{A}X) \\ - \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow m(_{Z}^{A}X) = - \Delta m(_{Z}^{A}X) \\ + \left( Z \cdot m_p + (A-Z) \cdot m_n \right) \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
