import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data_constants.dart';

Widget energieDeLiaisonParNucleonResult({required String value}) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        PhyNucLatexContants.elnBold,

        TextSpan(
          text: " = $value MeV/nucléon",
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget detailsEnergieDeLiaisonParNucleon({
  required int Z,
  required int A,
  required String masseProton,
  required String masseNeutron,
  required masseNoyau,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),

      Text(
        "Intéressons nous uniquement au numérateur",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: " [$Z . "),

            TextSpan(text: "$masseProton u"),

            TextSpan(text: "\n + ($A-$Z) . "),

            TextSpan(text: "$masseNeutron u"),

            TextSpan(text: "\n- $masseNoyau u ] . "),

            PhyNucLatexContants.c2,
          ],
        ),
      ),

      SizedBox(height: 20),

      Text(
        "Mettons u en facteur",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: " [$Z . "),

            TextSpan(text: masseProton),

            TextSpan(text: "\n + ($A-$Z) . "),

            TextSpan(text: masseNeutron),

            TextSpan(text: "\n- $masseNoyau ] u . "),

            PhyNucLatexContants.c2,
          ],
        ),
      ),

      SizedBox(height: 20),

      Text(
        "Or",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      DonneesPhyNucLatexConstants.uEnMeVC2,

      SizedBox(height: 20),

      Text(
        "D'où",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: " [$Z . "),

            TextSpan(text: masseProton),

            TextSpan(text: "\n + ($A-$Z) . "),

            TextSpan(text: masseNeutron),

            TextSpan(
              text:
                  "\n- $masseNoyau ] . ${DonneesPhyNucLatexConstants.uEnMeVC2Value} ",
            ),

            PhyNucLatexContants.mevc2,

            TextSpan(text: " . "),

            PhyNucLatexContants.c2,
          ],
        ),
      ),

      SizedBox(height: 20),

      Text(
        "Or",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            PhyNucLatexContants.mevc2,

            TextSpan(text: " . "),

            PhyNucLatexContants.c2,

            TextSpan(text: " = MeV . "),

            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Transform.translate(
                offset: const Offset(
                  0,
                  0,
                ), // Déplacement vertical (négatif = vers le haut)
                child: TeX2SVG(
                  math: r"\frac{c^2}{c^2}",
                  formulaWidgetBuilder: (context, svg) {
                    double displayFontSize =
                        ExoConstants.richTextFontSize * 2.5;
                    return SvgPicture.string(
                      svg,
                      height: displayFontSize,
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            PhyNucLatexContants.mevc2,

            TextSpan(text: " . "),

            PhyNucLatexContants.c2,

            TextSpan(text: " = MeV"),
          ],
        ),
      ),

      SizedBox(height: 20),

      Text(
        "D'où le numérateur devient:",
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: ExoConstants.fontSize,
        ),
      ),

      SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: " [$Z . "),

            TextSpan(text: masseProton),

            TextSpan(text: "\n + ($A-$Z) . "),

            TextSpan(text: masseNeutron),

            TextSpan(
              text:
                  "\n- $masseNoyau ] . ${DonneesPhyNucLatexConstants.uEnMeVC2Value} MeV",
            ),
          ],
        ),
      ),
    ],
  );
}
