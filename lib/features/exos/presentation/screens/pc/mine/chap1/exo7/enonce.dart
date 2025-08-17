import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcMineChap1Exo7Enonce extends ConsumerWidget {
  const PcMineChap1Exo7Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es responsable technique dans une station d'épuration municipale qui traite les eaux usées de la ville. L'installation utilise des solutions d'hydroxyde de sodium pour neutraliser l'acidité des effluents industriels et du sulfate d'aluminium comme coagulant pour éliminer les particules en suspension.\n\nLe directeur de la station te confie une mission technique importante : préparer une solution de soude diluée à partir d'une solution commerciale concentrée, puis la mélanger avec une solution de sulfate d'aluminium pour créer un réactif de traitement optimisé. Tes calculs de concentrations détermineront si le mélange respecte les normes de traitement des eaux usées municipales.\n\n",
        ),
        transition(
          transition:
              "ÉTAPE 1 - Préparation à partir de la solution commerciale S1\n\n",
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
                text:
                    "Tu disposes d'une solution commerciale S1 d'hydroxyde de sodium de masse volumique ρ = 1,25 g/mL et de pourcentage en masse 32,0 %. Tu dilues 75,0 mL de cette solution commerciale S1 dans une fiole jaugée de 400 mL pour obtenir la solution de travail S'1.\n\nL'équation de dissolution de NaOH dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"NaOH_{(s)} \rightarrow Na^+_{(aq)} + OH^-_{(aq)}",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n1) Calculer les concentrations molaires de S1 et S'1. En déduire la concentration des ions Na⁺ dans S'1.\n\n",
        ),
        transition(
          transition: "ÉTAPE 2 - Préparation de la solution coagulante S2\n\n",
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
                text:
                    "Tu prépares également une solution S2 en dissolvant 25,6 g de sulfate d'aluminium ",
              ),
              buildTex2SvgInWidgetSpan(math: r"Al_2(SO_4)_3", scale: 1.0),
              const TextSpan(
                text:
                    " dans l'eau distillée pour obtenir exactement 600 mL de solution.\n\nL'équation de dissolution du sulfate d'aluminium dans l'eau est : ",
              ),
              buildTex2SvgInWidgetSpan(
                math: r"Al_2(SO_4)_3 \rightarrow 2Al^{3+} + 3SO_4^{2-}",
                scale: 1.8,
              ),
            ],
          ),
        ),
        sbTxt(
          txt:
              "\n\n2) Calculer les concentrations molaires des ions Al³⁺ et SO₄²⁻ présents dans S2.\n\n",
        ),
        transition(
          transition: "ÉTAPE 3 - Préparation du réactif de traitement\n\n",
        ),
        sbTxt(
          txt:
              "Pour obtenir le réactif de traitement final, tu mélanges 250 mL de solution S'1 avec 180 mL de solution S2. Le volume final du mélange est de 430 mL.\n\n",
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
                text:
                    "3) Calculer les concentrations molaires des ions Na⁺, Al³⁺ et SO₄²⁻ dans le mélange final.\n\n",
              ),
            ],
          ),
        ),

        Donnees(),
      ],
    );
  }
}
