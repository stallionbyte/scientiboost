import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Raisonnement détaillé : Application numérique de t = (T/ln2)ln(m₀/m)

          // Étape 1 : Formule générale
          tex(
            math:
                r"\begin{array}{l} t = \frac{T}{\ln 2} \ln\left(\frac{m_0}{m}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Données numériques disponibles
          tex(
            math:
                r"\begin{array}{l} T = 24\ 100\ \text{ans} \\ \frac{m}{m_0} = 0,17 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Substitution de la période T
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{24\ 100}{\ln 2} \ln\left(\frac{m_0}{m}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Calcul de l'inverse du rapport de masse
          tex(
            math:
                r"\begin{array}{l} \frac{m}{m_0} = 0,17 \\ \Rightarrow \ \frac{m_0}{m} = \frac{1}{0,17} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Substitution du rapport de masse inversé
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{24\ 100}{\ln 2} \ln\left(\frac{1}{0,17}\right) \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
