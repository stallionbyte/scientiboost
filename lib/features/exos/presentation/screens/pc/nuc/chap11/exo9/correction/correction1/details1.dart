import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
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
          energieDeLiaisonParNucleon(scale: 7.0),

          // Raisonnement détaillé : De la formule générale à l'application numérique
          EspConstants.esp80,

          // Étape 2 : Identification de l'isotope étudié
          tex(
            math:
                r"\begin{array}{l} \text{Isotope : } _{26}^{56}Fe \\ Z = 26 \text{ (protons)} \\ A = 56 \text{ (nucléons)} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 3 : Substitution des valeurs atomiques
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot m_p \\ + (56-26) \cdot m_n \\ - m(_{26}^{56}Fe)] \cdot c^2 \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 4 : Valeurs numériques des masses
          tex(
            math:
                r"\begin{array}{l} m_p = 1,007276 \text{ u} \\ m_n = 1,008665 \text{ u} \\ m(_{26}^{56}Fe) = 52093,56 \text{ MeV/c}^2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp80,

          // Étape 5 : Substitution des masses du proton et neutron
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \text{ u} \\ + (56-26) \cdot 1,008665 \text{ u} \\ - 52093,56 \text{ MeV/c}^2] \cdot c^2 \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp40,

          // Étape 6 : Conversion des unités atomiques
          tex(
            math:
                r"\begin{array}{l} 1 \text{ u} = 931,5 \text{ MeV/c}^2 \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp40,

          // Étape 7 : Application de la conversion aux masses
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \text{ MeV/c}^2 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \text{ MeV/c}^2 \\ - 52093,56 \text{ MeV/c}^2] \cdot c^2 \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 8 : Mise en facteur de MeV/c²
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \\ - 52093,56] \text{ MeV/c}^2 \cdot c^2 \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 9 : Réécriture avec c² au dénominateur
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \\ - 52093,56] \frac{\text{MeV}}{c^2} \cdot c^2 \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 10 : Simplification avec cancel
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \\ - 52093,56] \frac{\text{MeV}}{\cancel{c^2}} \cdot \cancel{c^2} \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
          EspConstants.esp80,

          // Étape 11 : Simplification des termes c²
          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \\ - 52093,56] \text{ MeV} \end{array}}{56} \end{array}",
            scale: 7.0,
          ),
        ],
      ),
    );
  }
}
