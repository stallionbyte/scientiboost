import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap11Exo6Enonce extends ConsumerWidget {
  const PcNucChap11Exo6Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          '     Vous travaillez dans un laboratoire de recherche médicale et devez évaluer les propriétés du radium-226 utilisé historiquement en curiethérapie.',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 30),
        Text(
          '1) Calculez l\'énergie de liaison',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),
        Text(
          '2) Calculez l\'énergie d\'un noyau de radium-226 au repos et comparez-la avec l\'énergie de liaison',
          style: TextStyle(fontSize: ExoConstants.fontSize),
        ),
        SizedBox(height: 20),

        Donnees(),
      ],
    );
  }
}
