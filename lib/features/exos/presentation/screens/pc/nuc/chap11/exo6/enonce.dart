import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo6Enonce extends ConsumerWidget {
  const PcNucChap11Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              'Vous travaillez dans un laboratoire de recherche médicale et devez évaluer les propriétés du radium-226 utilisé historiquement en curiethérapie. \n \n',
        ),
        sbTxt(txt: '1) Calculez l\'énergie de liaison \n \n'),
        sbTxt(
          txt:
              '2) Calculez l\'énergie d\'un noyau de radium-226 au repos et comparez-la avec l\'énergie de liaison \n \n',
        ),
        Donnees(),
      ],
    );
  }
}
