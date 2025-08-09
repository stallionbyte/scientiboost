import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

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
          // Raisonnement détaillé : Isoler le temps t de 0,3m₀ = m₀e^(-λt)
          sbTxt(txt: "Si 70% de la masse a disparu, donc il reste 30%"),
          EspConstants.esp40,
          transition(transition: "masse restante"),
          EspConstants.esp40,
          loiDeDecroissanceMasse(scale: 2.0),
          EspConstants.esp40,

          tex(math: r"m = 30\%m_0"),
          EspConstants.esp40,
          tex(math: r"m = 0,3m_0"),
          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          // Étape 1 : Formule de départ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  0,3 m_0 = m_0 e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Division des deux membres par m₀
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{0,3 m_0}{m_0} = \frac{m_0 e^{-\lambda t}}{m_0} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Simplification des fractions
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 0,3 = e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Application du logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln(0,3) = \\ \ln(e^{-\lambda t}) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Simplification du membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln(0,3) = -\lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 6 : Division des deux membres par -λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln(0,3)}{-\lambda} = t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp80,

          // Étape 7 : Réorganisation de l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{\ln(0,3)}{\lambda} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
