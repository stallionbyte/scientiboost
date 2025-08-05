import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo10Enonce extends ConsumerWidget {
  const PcNucChap11Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur(e) en sûreté nucléaire dans le service de radioprotection d'un centre de recherche. Suite à un incident mineur dans un laboratoire, des échantillons contenant du lithium-7 ont été dispersés. Ta mission : évaluer les risques de désintégration spontanée et les énergies mises en jeu pour établir les protocoles de décontamination appropriés.\n\n"
              "Le chef du service de sécurité te confie une analyse urgente sur la stabilité des noyaux de lithium-7 et les énergies nécessaires pour provoquer leur désintégration.\n\n"
              "Isotope concerné : Lithium-7\n"
              "Masse atomique mesurée : 7,01600 u\n\n",
        ),

        sbTxt(
          txt:
              "1) Calculer l'énergie de liaison par nucléon du noyau de lithium-7.\n\n",
        ),

        sbTxt(
          txt:
              "2) Quelle énergie doit-on fournir au noyau pour lui arracher un proton ?\n\n",
        ),

        sbTxt(
          txt:
              "3) Quelle énergie doit-on fournir au noyau pour lui arracher un neutron ?\n\n",
        ),

        Donnees(),
      ],
    );
  }
}
