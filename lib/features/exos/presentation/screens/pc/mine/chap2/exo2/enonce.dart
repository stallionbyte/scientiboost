import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'donnees.dart';

class PcMineChap2Exo2Enonce extends ConsumerWidget {
  const PcMineChap2Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable qualité dans une usine de fabrication de détergents industriels. Pour formuler un nouveau produit nettoyant écologique, tu dois préparer des solutions basiques de pH contrôlé. Le laboratoire attend tes analyses pour valider la formulation qui sera commercialisée à l'international.\n\nTon expertise déterminera le succès du lancement de cette gamme de produits verts.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Préparation de la solution S₁\n\n"),
        sbTxt(
          txt:
              "Tu dissous 2,0 g d'hydroxyde de sodium solide dans 2,5 L d'eau distillée pour obtenir une solution S₁.\n\n",
        ),
        sbTxt(
          txt:
              "1) Calculer la concentration molaire de la solution S₁. En déduire le pH de cette solution. Calculer les concentrations de toutes les espèces chimiques présentes dans S₁.\n\n",
        ),

        transition(transition: "ÉTAPE 2 - Préparation de la solution S₂\n\n"),
        sbTxt(
          txt:
              "Tu prélèves 25,0 mL d'une solution commerciale d'hydroxyde de calcium de masse volumique 1,15 g/mL et de pourcentage massique 12% que tu dilues dans 1,5 L d'eau distillée pour obtenir une solution S₂.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer la concentration molaire de la solution S₂. En déduire le pH de cette solution. Calculer les concentrations de toutes les espèces chimiques présentes dans S₂. \n\n",
        ),
        transition(transition: "ÉTAPE 3 - Préparation du mélange final S₃\n\n"),
        sbTxt(
          txt:
              "Pour obtenir la solution finale S₃, tu mélanges 300 mL de la solution S₁ avec 200 mL de la solution S₂.\n\n",
        ),
        sbTxt(
          txt:
              "3) Calculer le pH du mélange S₃.  Calculer les concentrations de toutes les espèces chimiques présentes dans S₃. \n\n",
        ),
        Donnees(),
      ],
    );
  }
}
