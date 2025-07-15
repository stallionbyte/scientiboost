// pc/nuc/builders.dart

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';

Widget donnerCompositionNucleide({
  required WidgetSpan nucleide,
  required int A,
  required int Z,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,
            color: Colors.black,
          ),
          children: <InlineSpan>[
            const TextSpan(text: "Un noyau de  "),

            nucleide,

            const TextSpan(text: "  est composé de:"),
          ],
        ),
      ),

      SizedBox(height: 20),

      Text(
        "$A nucléons au total (A = $A)",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),

      Text(
        "$Z protons (Z = $Z)",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),

      Text(
        "${A - Z} neutrons (N = A - Z => N = ${A - Z})",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),
    ],
  );
}

//------------------TeXSVG-MATH-----------------------------------------

String buildTex2SvgMathNotationNoyau({
  String X = r"X",
  String A = r"A",
  String Z = r"Z",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r"\mathbf{");
  }

  math.write(r"_{");

  math.write(Z);

  math.write(r"}^{");

  math.write(A);

  math.write(r"}");

  math.write(X);

  if (bold) {
    math.write(r"}");
  }

  return math.toString();
}

String buildTex2SvgMathESurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathmEgaleESurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" m = \frac{ ");

  math.write(E);

  math.write(r" }{ ");

  math.write(c);

  math.write(r" ^2} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathRelationEinstein({
  String E = r" E ",
  String m = r" m ",
  String c = r" c ",
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(r" E = ");

  math.write(m);

  math.write(r" \cdot {");

  math.write(c);

  math.write(r" } ^ 2 ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}

String buildTex2SvgMathDefautDeMasse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r"\mathbf{ ");
  }

  // Ouverture d'un array pour rendre plus lisible
  math.write(r"\begin{array}{l} ");

  // Ligne 1 : Δm(...) =
  math.write(r"\Delta m(_{");
  math.write(Z);
  math.write(r"}^{");
  math.write(A);
  math.write(r"} ");
  math.write(X);
  math.write(r") = \\ "); // Wrap ici

  // Ligne 2 : partie entre crochets
  math.write(r" \left[ \begin{array}{l} ");
  math.write(Z);
  math.write(r" \cdot ");
  math.write(mp);
  math.write(r" + \\ (");
  math.write(A);
  math.write(r" - ");
  math.write(Z);
  math.write(r") \cdot ");
  math.write(mn);
  math.write(r" \end{array} \right] \\ - ");

  // Ligne 3 : masse du noyau
  if (masseNoyau != null) {
    math.write(masseNoyau);
  } else {
    math.write(r" m(_{");
    math.write(Z);
    math.write(r"}^{");
    math.write(A);
    math.write(r"} ");
    math.write(X);
    math.write(r") ");
  }

  math.write(r"\end{array}");

  if (bold) {
    math.write(r"}");
  }

  return math.toString();
}

String buildTex2SvgMathEnergieDeLiaisonParNucleon({
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? masseNoyau,
  String? uEnMeVC2,
  bool bold = false,
}) {
  StringBuffer math = StringBuffer();

  if (bold) {
    math.write(r" \mathbf{ ");
  }

  math.write(
    r" \begin{array}{l} E_{l/nuc} = \\ \displaystyle \frac{ \left[ \begin{array}{l} ",
  );

  math.write(Z);

  math.write(r" \cdot ");

  math.write(mp);

  math.write(r" \\ + ( ");

  math.write(A);

  math.write(r" - ");

  math.write(Z);

  math.write(r" ) \cdot ");

  math.write(mn);

  math.write(r" \\  - ");

  if (masseNoyau != null) {
    math.write(masseNoyau);
  } else {
    math.write(r" m(_{ ");

    math.write(Z);

    math.write(r" }^{ ");

    math.write(A);

    math.write(r" } ");

    math.write(X);

    math.write(r" ) ");
  }

  math.write(r" \end{array} \right] \cdot ");

  if (uEnMeVC2 != null) {
    math.write(uEnMeVC2);
  } else {
    math.write(r"c^2");
  }

  math.write(r" }{ ");

  math.write(A);

  math.write(r" } \end{array} ");

  if (bold) {
    math.write(r" } ");
  }

  return math.toString();
}
