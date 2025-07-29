import 'package:flutter/material.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import '../tex2svg_math/tex2svg_math.dart';
import 'inverses.dart';

Widget aoAvecALambdaTemps({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String A = r"A",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathAoAvecALambdaTemps(
      A: A,
      Ao: Ao,
      t: t,
      lambda: lambda,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget calculAoAvecALambdaTemps({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String A = r"A",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    children: [
      activite(scale: scale),

      const SizedBox(height: 40),

      activiteInverse(entraineQue: entraineQue, scale: scale),

      const SizedBox(height: 40),

      aoAvecALambdaTemps(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        entraineQue: entraineQue,
        bold: bold,
        scale: scale,
      ),
    ],
  );
}
