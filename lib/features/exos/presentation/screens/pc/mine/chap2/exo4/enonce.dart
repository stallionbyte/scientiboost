import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMineChap2Exo4Enonce extends ConsumerWidget {
  const PcMineChap2Exo4Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es technicien dans un laboratoire de contrôle qualité d'une entreprise pharmaceutique. Pour la fabrication d'un médicament antiacide, tu dois analyser une solution d'hydroxyde de calcium utilisée comme principe actif. La concentration exacte de cette solution est cruciale pour garantir l'efficacité thérapeutique et la sécurité du médicament.\n\nTon analyse conditionnera la validation du lot de production et sa mise sur le marché.\n\n",
        ),
        transition(transition: "ANALYSE DE LA SOLUTION PHARMACEUTIQUE\n\n"),
        sbTxt(
          txt:
              "Tu disposes de 1,8 L d'une solution d'hydroxyde de calcium de pH = 11,7.\n\n",
        ),
        sbTxt(
          txt:
              "1) Calculer les concentrations de toutes les espèces chimiques présentes dans cette solution. En déduire la concentration molaire de la solution d'hydroxyde de calcium. \n\n",
        ),
        transition(transition: "CALCUL DE LA MASSE DISSOUTE\n\n"),
        sbTxt(
          txt:
              "2) Calculer la masse d'hydroxyde de calcium qui a été dissoute pour préparer cette solution.\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
