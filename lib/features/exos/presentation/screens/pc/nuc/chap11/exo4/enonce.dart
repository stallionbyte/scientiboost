import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo4Enonce extends ConsumerWidget {
  const PcNucChap11Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Tu travailles comme technicien(ne) au sein d'un réacteur nucléaire de recherche spécialisé dans la production de radioéléments à usage médical. Lors d'un contrôle de routine, tu dois vérifier que les caractéristiques physiques mesurées d'un isotope correspondent aux valeurs théoriques prévues. \n \n",
        ),

        sbTxt(
          txt:
              "Un physicien t'indique que l'énergie de liaison du noyau baryum-138 est de 1176 MeV. Tu dois retrouver la masse du noyau à partir de cette énergie. \n \n",
        ),

        sbTxt(
          txt: "1) Calculer le défaut de masse d'un noyau de baryum-138 \n \n",
        ),

        sbTxt(txt: "2) Calculer la masse de ce noyau \n \n"),

        Donnees(),
      ],
    );
  }
}
