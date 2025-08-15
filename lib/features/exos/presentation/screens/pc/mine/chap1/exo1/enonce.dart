import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo1Enonce extends ConsumerWidget {
  const PcMineChap1Exo1Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es technicien spécialisé dans une station de traitement des eaux usées industrielles qui dessert plusieurs entreprises métallurgiques de la région. Aujourd'hui, tu dois traiter un effluent particulièrement complexe contenant du cuivre et du zinc, deux métaux lourds très toxiques pour l'environnement aquatique.\n\nLe directeur technique te confie une mission cruciale : préparer deux solutions de traitement par précipitation chimique pour éliminer ces contaminants. Tu dois ensuite mélanger ces solutions pour créer un traitement combiné optimisé. Ton travail déterminera si la station peut respecter les normes environnementales strictes et éviter une pollution de la rivière locale.\n\n",
        ),
        transition(transition: "ÉTAPE 1 - Préparation de la solution S1\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "Tu dissous 12,5 g de sulfate de cuivre pentahydraté ",
              ),
              buildTex2SvgInWidgetSpan(math: r"CuSO_4 \cdot 5H_2O", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 250 mL de solution S1.",
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer la concentration molaire de la solution S1.\n\n2) Déterminer les concentrations molaires de tous les ions présents dans S1.\n\n",
        ),
        transition(transition: "ÉTAPE 2 - Préparation de la solution S2\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "Tu dissous 17,2 g de sulfate de zinc heptahydraté ",
              ),
              buildTex2SvgInWidgetSpan(math: r"ZnSO_4 \cdot 7H_2O", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 300 mL de solution S2.",
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n3) Calculer la concentration molaire de la solution S2.\n\n4) Déterminer les concentrations molaires de tous les ions présents dans S2.\n\n",
        ),
        transition(
          transition: "ÉTAPE 3 - Préparation du mélange de traitement S3\n\n",
        ),
        sbTxt(
          txt:
              "Pour optimiser le traitement d'un échantillon d'eau polluée, tu mélanges 150 mL de solution S1 avec 200 mL de solution S2 pour obtenir la solution de traitement S3.\n\n",
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(
                text: "5) Calculer la concentration molaire des ions ",
              ),
              buildTex2SvgInWidgetSpan(math: r"SO_4^{2-}", scale: 1.2),
              const TextSpan(text: " dans la solution S3 finale. \n\n"),
            ],
          ),
        ),
        Donnees(),
      ],
    );
  }
}
