import 'package:flutter/material.dart';

import 'inverses.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget calculTempsAvecAEtAo({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      activite(scale: scale),

      const SizedBox(height: 40),

      activiteInverse(entraineQue: entraineQue, scale: scale),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo3(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo4(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo5(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 40),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculTempsAvecXEtXo6(
          A: A,
          Ao: Ao,
          lambda: lambda,
          t: t,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),
    ],
  );
}
