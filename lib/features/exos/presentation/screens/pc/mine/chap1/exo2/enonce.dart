import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo2Enonce extends ConsumerWidget {
  const PcMineChap1Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es technicien en chef d'une station de traitement des eaux d'une région agricole intensive. Les analyses récentes révèlent une pollution préoccupante des nappes phréatiques par les nitrates et une dureté excessive de l'eau due au calcium et magnésium. Le directeur te confie une mission critique : préparer les solutions de traitement pour corriger ces problèmes.\n\nTu dois d'abord préparer une solution de chlorure de magnésium pour les tests de dureté, puis acidifier l'eau avec de l'acide chlorhydrique pour optimiser certains traitements. Enfin, tu mélanges ces solutions pour créer un réactif de contrôle. Ton travail déterminera l'efficacité du nouveau protocole de traitement qui sera déployé dans toute la région.\n\n",
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
                text: "Tu dissous 19,1 g de chlorure de magnésium hexahydraté ",
              ),
              buildTex2SvgInWidgetSpan(math: r"MgCl_2 \cdot 6H2O", scale: 1.2),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 400 mL de solution S1.",
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer la concentration molaire de la solution S1.\n\n2) Déterminer les concentrations molaires de tous les ions issus du chlorure de magnésium et présents dans S1.\n\n",
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
                text:
                    "Tu prépares une solution d'acide chlorhydrique S2 en diluant 50 mL d'une solution commerciale d'HCl à 0,500 mol/L dans l'eau distillée pour obtenir exactement 250 mL de solution S2.\n\nL'équation de dissolution de HCl dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"HCl + H_2O \rightarrow H_3O^+  + Cl^-",
                scale: 1.5,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n3) Calculer la concentration molaire de la solution S2.\n\n4) Déterminer la concentration molaire des ions chlorures présents dans S2.\n\n",
        ),
        transition(
          transition: "ÉTAPE 3 - Préparation du mélange réactif S3\n\n",
        ),
        sbTxt(
          txt:
              "Pour valider le nouveau protocole, tu mélanges 180 mL de solution S1 avec 120 mL de solution S2 pour obtenir la solution de contrôle S3.\n\n",
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
                text: "5) Calculer les concentrations molaires des ions: ",
              ),
              buildTex2SvgInWidgetSpan(math: r"Cl^-\ ;\ Mg^{2+}", scale: 1.2),
              const TextSpan(text: " dans la solution S3 finale.\n\n"),
            ],
          ),
        ),
        Donnees(),
      ],
    );
  }
}
