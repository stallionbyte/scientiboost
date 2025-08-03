import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo3Enonce extends ConsumerWidget {
  const PcNucChap11Exo3Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Tu es stagiaire dans un laboratoire de médecine nucléaire qui développe des isotopes pour des traitements ciblés contre certains cancers. L'équipe de recherche envisage d'utiliser un isotope du molybdène pour produire du technétium-99m, très utilisé en imagerie médicale. \n \n",
        ),

        sbTxt(
          txt:
              "Avant de valider ce choix, tu dois t'assurer que le noyau du molybdène-98 est suffisamment stable pour être manipulé en toute sécurité avant sa transformation. \n \n",
        ),

        sbTxt(
          txt:
              "L'un des critères pour évaluer cette stabilité est l'énergie de liaison du noyau. On te confie donc la tâche suivante : \n \n",
        ),

        sbTxt(
          txt: "1) Calcule le défaut de masse du noyau de molybdène-98 \n \n",
        ),

        sbTxt(txt: "2) En déduis l'énergie de liaison de ce noyau \n \n"),

        sbTxt(
          txt: "3) Calcule l'énergie de liaison par nucléon de ce noyau \n \n",
        ),

        Donnees(),
      ],
    );
  }
}
