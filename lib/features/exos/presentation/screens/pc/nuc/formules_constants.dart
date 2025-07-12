import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'package:scientiboost/core/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/constants.dart';

class PhyNucLatexFormulesContants {
  static double scale = 1.2;

  static Widget defautDeMasse = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,

        color: Colors.black,
      ),
      children: <InlineSpan>[
        PhyNucLatexContants.delta,
        const TextSpan(text: "m( "),
        PhyNucLatexContants.notationNoyau,
        const TextSpan(text: ") = Z x "),
        PhyNucLatexContants.mp,
        const TextSpan(text: "+ (A-Z) x "),
        PhyNucLatexContants.mn,
        const TextSpan(text: "\n \n - m("),
        PhyNucLatexContants.notationNoyau,
        const TextSpan(text: ")"),
      ],
    ),
  );

  static Widget energieDeLiaisonParNucleon = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"""
E_{l/nuc} = \frac{
  \left[
    \begin{array}{l}
      Z \cdot m_p \\
      + (A - Z) \cdot m_n \\
      - m(_{Z}^{A}X)
    \end{array}
  \right] \cdot c^2
}{A}
""",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * 6;
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
  );

  static Widget energieDeLiaisonParNucleonU235 = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"""
\begin{array}{l}
  E_{l/nuc} = \\
  \displaystyle \frac{ 
    \left[
      \begin{array}{l}
        92 \cdot 1.007276 \\
        + (235 - 92) \cdot 1.008665 \\
        - 235.0439
      \end{array}
    \right] \cdot 931.5 \text{MeV}
  }{235}
\end{array}
""",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * 6;
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
  );

  static Widget energieDeLiaisonParNucleonFe56 = RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      children: <InlineSpan>[
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          child: TeX2SVG(
            math: r"""
\begin{array}{l}
  E_{l/nuc} = \\
  \displaystyle \frac{ 
    \left[
      \begin{array}{l}
        26 \cdot 1.007276 \\
        + (56 - 26) \cdot 1.008665 \\
        - 55,934936
      \end{array}
    \right] \cdot 931.5 \text{MeV}
  }{56}
\end{array}
""",

            formulaWidgetBuilder: (context, svg) {
              double displayFontSize = ExoConstants.displayFontSize * 6;
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
  );
}
