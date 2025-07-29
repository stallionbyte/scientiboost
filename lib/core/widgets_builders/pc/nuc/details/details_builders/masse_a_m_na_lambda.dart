import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'inverses.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget masseAvecAMNaLambdaEtapes({
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    children: [
      activite3(lambda: lambda, m: m, M: M, Na: Na, A: A, scale: 1.5),

      EspConstants.esp40,

      activite3Inverse(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 2.0,
        entraineQue: true,
      ),

      EspConstants.esp40,

      masseAvecAMNaLambdaEtape2(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 2.0,
        entraineQue: true,
      ),

      EspConstants.esp40,

      masseAvecAMNaLambda(
        lambda: lambda,
        m: m,
        M: M,
        Na: Na,
        A: A,
        scale: 3.0,
        entraineQue: true,
      ),
    ],
  );
}

Widget masseAvecAMNaLambdaEtape2({
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaLambdaEtape2(
      lambda: lambda,
      m: m,
      M: M,
      Na: Na,
      A: A,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
