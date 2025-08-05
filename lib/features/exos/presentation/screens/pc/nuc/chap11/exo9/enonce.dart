import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo9Enonce extends ConsumerWidget {
  const PcNucChap11Exo9Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es physicien(ne) nucléaire dans un laboratoire de recherche internationale. L'Agence Internationale de l'Énergie Atomique (AIEA) te confie une mission cruciale : évaluer la stabilité de trois isotopes candidats pour différentes applications énergétiques.\n\n"
              "Trois équipes de recherche internationales te transmettent leurs données expérimentales sur des isotopes prometteurs, mais chaque équipe utilise des unités et des grandeurs différentes :\n\n"
              "Équipe A :\n"
              "- Isotope : Fer-56\n"
              "- Masse du noyau mesurée : 52093,56 MeV/c²\n\n"
              "Équipe B :\n"
              "- Isotope : Carbone-12\n"
              "- Défaut de masse calculé : 0,09892 u\n\n"
              "Équipe C :\n"
              "- Isotope : Uranium-238\n"
              "- Énergie de liaison totale mesurée : 1802 MeV\n\n",
        ),

        sbTxt(
          txt:
              "1) Calculer l'énergie de liaison par nucléon de chacun des trois isotopes en MeV \n \n",
        ),

        sbTxt(
          txt:
              "2) Classer ces trois noyaux par ordre de stabilité croissante\n\n",
        ),

        Donnees(),
      ],
    );
  }
}
