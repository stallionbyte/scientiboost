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
          // Raisonnement détaillé : Application numérique de Q = [m(_{94}^{239}Pu) - m_α]c²

          // Étape 2 : Réécriture avec notation isotopique standard
          tex(
            math:
                r"\begin{array}{l} Q = [m(_{94}^{239}Pu) - m_{\alpha}] \cdot c^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Données numériques disponibles
          tex(
            math:
                r"\begin{array}{l} m(_{94}^{239}Pu) = 239,05216\ \text{u} \\ m_{\alpha} = 4,002603\ \text{u} \\ 1\ \text{u} = 1,66 \times 10^{-27}\ \text{kg} \\ c = 3 \times 10^8\ \text{m/s} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Substitution des masses
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = [239,05216 \\ - 4,002603]\ \text{u}  \cdot c^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Conversion des unités u vers kg
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ Q = [239,05216 \\ - 4,002603] \\ \times 1,66 \times 10^{-27}\ \text{kg} \cdot c^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 7 : Application numérique finale
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  Q = [239,05216 \\ - 4,002603] \\ \cdot 1,66 \times 10^{-27} \cdot (3 \times 10^8)^2 \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
