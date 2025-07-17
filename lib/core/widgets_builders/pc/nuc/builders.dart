// pc/nuc/builders.dart

import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
        "$A nucléons au total (A = $A), dont:",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),

      Text(
        "$Z protons (Z = $Z) et",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),

      Text(
        "${A - Z} neutrons (N = A - Z => N = ${A - Z})",
        style: const TextStyle(fontSize: ExoConstants.fontSize),
      ),
    ],
  );
}

WidgetSpan notationNoyau({
  String X = r"X",
  String A = r"A",
  String Z = r"Z",
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathNotationNoyau(X: X, A: A, Z: Z, bold: bold),
    scale: scale,
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
