import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'donnees.dart';

class PcNucChap13Exo10Enonce extends ConsumerWidget {
  const PcNucChap13Exo10Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        sbTxt(
          txt:
              "Tu es ingénieur en chef dans une compagnie énergétique internationale qui développe les technologies du futur. Ton entreprise doit choisir entre investir massivement dans l'amélioration des centrales à fission ou dans le développement des réacteurs à fusion. Le conseil d'administration te demande une analyse comparative rigoureuse de l'efficacité énergétique de ces deux technologies.\n\nTu dois comparer deux réactions spécifiques : la fission de l'uranium-233 et la fusion de deux noyaux de deutérium. Ton rapport déterminera l'orientation stratégique de l'entreprise pour les 20 prochaines années.\n\n",
        ),
        transition(transition: "PARTIE A - Réaction de fission\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 2.0,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "La fission de l'uranium-233 : "),
              buildTex2SvgInWidgetSpan(
                math:
                    r"\begin{array}{l} ^{233}U + ^1n \rightarrow ^{95}Sr \\+ ^{138}Xe + 2^1n \end{array}",
                scale: 4.0,
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "1) Calculer l'énergie libérée par cette réaction de fission.\n\n",
        ),
        sbTxt(
          txt:
              "2) Calculer l'énergie totale qui serait libérée par la fission complète de 1 kg d'uranium-233.\n\n",
        ),
        transition(transition: "PARTIE B - Réaction de fusion\n\n"),
        RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: ExoConstants.richTextFontSize,
              color: Colors.black,
              height: 1.5,
            ),
            children: <InlineSpan>[
              const TextSpan(text: "La fusion de deux deutérium : "),
              buildTex2SvgInWidgetSpan(
                math: r"^2H + ^2H \rightarrow ^3He + ^1n",
                scale: 2.0,
              ),
            ],
          ),
        ),
        sbTxt(txt: "\n\n"),
        sbTxt(
          txt:
              "3) Calculer l'énergie libérée par cette réaction de fusion.\n\n",
        ),
        sbTxt(
          txt:
              "4) Calculer l'énergie totale qui serait libérée par la fusion complète de 1 kg de deutérium.\n\n",
        ),
        sbTxt(
          txt:
              "5) Comparer les énergies libérées par kilogramme de combustible pour les deux technologies et conclure sur leur potentiel énergétique respectif.\n\n",
        ),
        Donnees(),
      ],
    );
  }
}
