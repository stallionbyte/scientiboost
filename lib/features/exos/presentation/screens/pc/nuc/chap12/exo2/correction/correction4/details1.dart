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
          // Raisonnement détaillé : Isoler le temps t de 10% A₀ = A₀·e^(-λt)

          // Étape 1 : Expression de départ
          tex(
            math:
                r"\begin{array}{l} 10\% \cdot A_0 = A_0 \cdot e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 2 : Conversion du pourcentage
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 10^{-1} \cdot A_0 = A_0 \cdot e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 3 : Diviser les deux membres par A₀
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{10^{-1} \cdot A_0}{A_0} = \frac{A_0 \cdot e^{-\lambda t}}{A_0} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 4 : Simplifier les fractions
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 10^{-1} = e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 5 : Appliquer le logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln(10^{-1}) = \ln(e^{-\lambda t}) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 6 : Simplifier le membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln(10^{-1}) = -\lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 7 : Diviser les deux membres par -λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ -\ln(10) = -\lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 8 : Réorganiser l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln(10) = \lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 9 : Réorganiser l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \lambda t = \ln(10)  \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 10 : Utiliser la propriété des logarithmes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{\ln(10)}{\lambda} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
