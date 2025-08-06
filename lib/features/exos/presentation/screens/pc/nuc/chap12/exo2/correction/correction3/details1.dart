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
          // Raisonnement détaillé : Isoler le temps t de la formule d'activité

          // Étape 1 : Formule de départ
          tex(
            math:
                r"\begin{array}{l} A(t) = A_0 \cdot e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 2 : Diviser les deux membres par A₀
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{A(t)}{A_0} = e^{-\lambda t} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 3 : Appliquer le logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{A(t)}{A_0}\right) = \ln(e^{-\lambda t}) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 4 : Simplifier le membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{A(t)}{A_0}\right) = -\lambda t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 5 : Diviser les deux membres par -λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln\left(\frac{A(t)}{A_0}\right)}{-\lambda} = t \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 6 : Réorganiser l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln\left(\frac{A(t)}{A_0}\right) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 7 : Utiliser la propriété des logarithmes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} [\ln(A(t)) \\ - \ln(A_0)] \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 8 : Distribuer le signe négatif
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln(A(t)) \\ + \frac{1}{\lambda} \ln(A_0) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 9 : Factoriser par 1/λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{1}{\lambda} [\ln(A_0) \\ - \ln(A(t))] \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          // Étape 10 : Résultat final avec logarithme d'un rapport
          tex(
            math:
                r"\begin{array}{l} t = \frac{1}{\lambda} \ln\left(\frac{A_0}{A(t)}\right) \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
