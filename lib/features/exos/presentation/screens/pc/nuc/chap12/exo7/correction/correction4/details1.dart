import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          // Raisonnement détaillé : Isoler le temps t de 3N₀/4 = N₀e^(-λt)

          // Étape 1 : Formule de départ
          tex(
            math:
                r"\begin{array}{l} \frac{3N_0}{4} = N_0 e^{-\lambda t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Division des deux membres par N₀
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\frac{3N_0}{4}}{N_0} = \frac{N_0 e^{-\lambda t}}{N_0} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Simplification des fractions
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{3}{4} = e^{-\lambda t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Application du logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{3}{4}\right) = \\ \ln(e^{-\lambda t}) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Simplification du membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{3}{4}\right) = -\lambda t \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 6 : Division des deux membres par -λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln\left(\frac{3}{4}\right)}{-\lambda} = t \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 7 : Réorganisation de l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln\left(\frac{3}{4}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 8 : Application de la propriété des logarithmes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} [\ln(3) \\ - \ln(4)] \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 9 : Distribution du signe négatif
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln(3) \\ + \frac{1}{\lambda} \ln(4) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 10 : Factorisation par 1/λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{1}{\lambda} [\ln(4) \\ - \ln(3)] \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 11 : Résultat final avec logarithme d'un rapport
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{1}{\lambda} \ln\left(\frac{4}{3}\right) \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
