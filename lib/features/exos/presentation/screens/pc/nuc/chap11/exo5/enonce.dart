import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcNucChap11Exo5Enonce extends ConsumerWidget {
  const PcNucChap11Exo5Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        sbTxt(
          txt:
              "Vous participez à une mission spatiale et devez évaluer l'utilisation du plutonium-238 comme source d'énergie pour alimenter les instruments scientifiques. \n \n",
        ),
        sbTxt(txt: "1) Calculez son défaut de masse \n \n"),
        sbTxt(
          txt:
              "2) Déterminez l'énergie stockée dans 1 kg de plutonium-238 sous forme d'énergie de liaison. \n \n",
        ),
        Donnees(),
      ],
    );
  }
}
