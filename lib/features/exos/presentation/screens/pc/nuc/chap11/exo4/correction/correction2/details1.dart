import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
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
          defautDeMasse(scale: 6.0),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ (\ Z \cdot m_p + (A-Z) \cdot m_n \ ) \\ - m(_{Z}^{A}X) = \Delta m \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  - m(_{Z}^{A}X) = \Delta m \\ - (\ Z \cdot m_p + (A-Z) \cdot m_n \ ) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  m(_{Z}^{A}X) = - \Delta m \\ + (\ Z \cdot m_p + (A-Z) \cdot m_n \ ) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  m(_{Z}^{A}X) = \\ (\ Z \cdot m_p + (A-Z) \cdot m_n \ ) \\ - \Delta m \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
