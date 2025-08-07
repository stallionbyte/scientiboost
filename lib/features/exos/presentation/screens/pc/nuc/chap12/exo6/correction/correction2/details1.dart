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
          // Raisonnement détaillé : Isoler le temps t de N₀ - 2N₀/5 = N₀e^(-λt)
          transition(transition: "Nombre de noyaux initiaux"),

          tex(math: r"N_0", scale: 1.0),
          EspConstants.esp80,

          transition(transition: "Nombre de noyaux disparus"),

          tex(
            math: r"\begin{array}{l} N' = \frac{2N_0}{5} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          transition(transition: "Nombre de noyaux restant"),
          tex(
            math: r"\begin{array}{l} \Rightarrow \ N = N_0 - N' \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp20,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N = N_0 - \frac{2N_0}{5} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          transition(
            transition:
                "Cette formule correspond aussi au nombre de noyaux restant",
          ),

          loiDeDecroissance(scale: 2.0),
          EspConstants.esp80,

          // Étape 1 : Formule de départ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  N_0 - \frac{2N_0}{5} =\\ N_0 e^{-\lambda t} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 2 : Factorisation de N₀ dans le membre de gauche
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N_0 \left(1 - \frac{2}{5}\right) \\ = N_0 e^{-\lambda t} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Calcul de la fraction
          tex(
            math:
                r"\begin{array}{l} 1 - \frac{2}{5} = \frac{5}{5} - \frac{2}{5} \end{array}",
            scale: 4.0,
          ),
          tex(
            math: r"\begin{array}{l} 1 - \frac{2}{5} = \frac{3}{5} \end{array}",
            scale: 2.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Substitution du résultat
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ N_0 \cdot \frac{3}{5} = N_0 e^{-\lambda t} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Division des deux membres par N₀
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{N_0 \cdot \frac{3}{5}}{N_0} = \frac{N_0 e^{-\lambda t}}{N_0} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 6 : Simplification des fractions
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{3}{5} = e^{-\lambda t} \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 7 : Application du logarithme népérien aux deux membres
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{3}{5}\right) = \\ \ln(e^{-\lambda t}) \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 8 : Simplification du membre de droite
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \ln\left(\frac{3}{5}\right) = -\lambda t \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 9 : Division des deux membres par -λ
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ \frac{\ln\left(\frac{3}{5}\right)}{-\lambda} = t \end{array}",
            scale: 4.0,
          ),
          EspConstants.esp80,

          // Étape 10 : Résultat final
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln\left(\frac{3}{5}\right) \end{array}",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
