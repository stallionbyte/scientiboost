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
          // Raisonnement détaillé : Isoler le temps t de m/m₀ = e^(-ln2/T·t)

          // Étape 1 : Formule de départ
          tex(
            math:
                r"\begin{array}{l} \frac{m}{m_0} = e^{-\frac{\ln 2}{T} t} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Application du logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{m}{m_0}\right) = \\ \ln\left(e^{-\frac{\ln 2}{T} t}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Simplification du membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{m}{m_0}\right) = -\frac{\ln 2}{T} t \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Division des deux membres par -ln2/T
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln\left(\frac{m}{m_0}\right)}{-\frac{\ln 2}{T}} = t \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Réorganisation de l'expression
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{T}{\ln 2} \ln\left(\frac{m}{m_0}\right) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 6 : Application de la propriété des logarithmes
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{T}{\ln 2} [\ln(m) \\ - \ln(m_0)] \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 7 : Distribution du signe négatif
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{T}{\ln 2} \ln(m) \\ + \frac{T}{\ln 2} \ln(m_0) \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 8 : Factorisation par T/ln2
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{T}{\ln 2} [\ln(m_0) \\ - \ln(m)] \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 9 : Résultat final avec logarithme d'un rapport
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = \frac{T}{\ln 2} \ln\left(\frac{m_0}{m}\right) \end{array}",
            scale: 5.0,
          ),
        ],
      ),
    );
  }
}
