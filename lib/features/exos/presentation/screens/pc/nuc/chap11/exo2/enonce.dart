import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo2Enonce extends ConsumerWidget {
  const PcNucChap11Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous êtes stagiaire dans un laboratoire de recherche en médecine nucléaire. L'équipe développe un nouveau radiopharmaceutique à base de technétium-99m (⁹⁹ᵐTc) pour l'imagerie médicale. Votre superviseur vous confie une mission importante : vérifier les calculs de masse du noyau de technétium-99 pour garantir la précision des doses administrées aux patients. \n \n",
        ),

        sbTxt(
          txt:
              "Le fournisseur de matière radioactive vous transmet une fiche technique incomplète. Il indique seulement que le défaut de masse du noyau de technétium-99 (₄₃⁹⁹Tc) est de 8,61 x 10⁻²⁸ kg. Pour compléter le dossier de sécurité et calculer les doses exactes, vous devez déterminer plusieurs paramètres essentiels. \n \n",
        ),

        sbTxt(txt: "1) Calculer la masse réelle du noyau de ⁹⁹Tc \n \n"),

        sbTxt(
          txt: "2) Calculer la masse totale des électrons de l'atome \n \n",
        ),

        sbTxt(txt: "3) Calculer la masse de l'atome de ⁹⁹Tc \n"),

        sbTxt(
          txt:
              "4) Comparer la masse de l'atome à celle des électrons. Conclure \n",
        ),

        Donnees(),
      ],
    );
  }
}
