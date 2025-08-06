import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap12Exo1Enonce extends ConsumerWidget {
  const PcNucChap12Exo1Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es physicien(ne) spécialisé(e) en datation radioactive au sein d'un laboratoire d'archéométrie. L'équipe d'archéologues du Musée National vient de découvrir dans une grotte préhistorique des fragments de charbon de bois associés à des peintures rupestres exceptionnelles.\n\n"
              "Le directeur du musée te confie une mission cruciale : dater ces vestiges pour déterminer l'époque de création de ces œuvres d'art préhistorique.\n\n"
              "Les analyses révèlent que les fragments contiennent du carbone-14, isotope radioactif qui subit une désintégration β⁻ vers l'azote. Tes mesures indiquent que l'échantillon contient actuellement 2,4 x 10¹⁵ noyaux de carbone-14 par gramme.\n\n",
        ),

        sbTxt(
          txt:
              "1) Le carbone-14 subit une désintégration β⁻ pour se transformer en azote.\n\n"
              "a) Écrire l'équation complète de cette désintégration radioactive.\n\n"
              "b) Expliquer brièvement le processus physique qui se produit dans le noyau lors de cette désintégration β⁻.\n\n",
        ),

        sbTxt(txt: "2) Calculer la constante radioactive du carbone-14\n\n"),

        sbTxt(
          txt:
              "3) Calculer l'activité A de l'échantillon de charbon en becquerels (Bq), puis exprime cette activité en curies (Ci).\n\n",
        ),

        sbTxt(txt: "4) Déterminer l'âge de l'échantillon.\n\n"),

        Donnees(),
      ],
    );
  }
}
