import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'inverses.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget tempsAvecTAetAo1({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo1(
      X: A,
      Xo: Ao,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo2({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo2(
      X: A,
      Xo: Ao,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo3({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo3(
      X: A,
      Xo: Ao,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo4({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo4(
      X: A,
      Xo: Ao,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo5({
  String lambda = r"\lambda",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo5(lambda: lambda, T: T, bold: bold),
    scale: scale,
  );
}

Widget tempsAvecTAetAo6({
  String lambda = r"\lambda",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo6(
      lambda: lambda,
      T: T,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo7({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String T = r"T",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecTXEtXo7(
      X: A,
      Xo: Ao,
      T: T,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget tempsAvecTAetAo({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      activite(scale: scale),

      EspConstants.esp40,

      activiteInverse(entraineQue: entraineQue, scale: scale),

      EspConstants.esp40,

      tempsAvecTAetAo1(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo2(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo3(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo4(
        A: A,
        Ao: Ao,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo5(
        lambda: lambda,
        T: T,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo6(
        lambda: lambda,
        T: T,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),

      EspConstants.esp40,

      tempsAvecTAetAo7(
        A: A,
        Ao: Ao,
        T: T,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
    ],
  );
}
