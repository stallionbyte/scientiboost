import 'package:flutter/material.dart';
export 'inverses.dart';
export 'ao_a_lambda_t.dart';
export 'ener_liaison.dart';
export 'ener_liaison_nuc.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget masseAvecAMNaTln2Etape2({
  String m = r"m",
  String M = r"M",

  String T = r"T",
  String N = r"N",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaTln2Etape2(
      m: m,
      M: M,
      T: T,
      N: N,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
