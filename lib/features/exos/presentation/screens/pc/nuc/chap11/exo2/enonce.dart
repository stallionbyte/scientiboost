import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tex/flutter_tex.dart';

class PcNucChap11Exo2Enonce extends ConsumerWidget {
  const PcNucChap11Exo2Enonce({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 18, color: Colors.black),
            children: <InlineSpan>[
              const TextSpan(
                text:
                    "Après le cours sur le noyau atomique, tu te retrouve avec tes camarades dans un groupe de travail pour traiter des exercices. L'un de tes camarades apporte l'exercice suivant: << l'hélium 4 est un nucléide représenté par le symbole ",
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TeX2SVG(
                  math: r"_{4}^{9}He",
                  formulaWidgetBuilder: (context, svg) {
                    double displayFontSize = 25;
                    return SvgPicture.string(
                      svg,
                      height: displayFontSize,
                      width: displayFontSize,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    );
                  },
                ),
              ),
              const TextSpan(
                text:
                    ". Le bérillium 9 est un nucléide représenté par le symbole ",
              ),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: TeX2SVG(
                  math: r"_{4}^{9}Be",
                  formulaWidgetBuilder: (context, svg) {
                    double displayFontSize = 25;
                    return SvgPicture.string(
                      svg,
                      height: displayFontSize,
                      width: displayFontSize,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    );
                  },
                ),
              ),
            ],
          ),
        ),

        Text(
          '1) Donner une définition du terme nucléide',
          style: const TextStyle(fontSize: 18, color: Colors.black),
        ),

        // faire ainsi pour les autre texte
        Container(
          alignment: Alignment.centerLeft, // Aligne à gauche
          // Ajoute un léger espace en haut si nécessaire
          child: Text(
            '2) Pour chaque nucléide',
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
        ),
      ],
    );
  }
}
