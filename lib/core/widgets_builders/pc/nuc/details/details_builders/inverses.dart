import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget energieDeLiaisonInverse({
  String? defautDeMasse,
  String? energieDeLiaison,
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonInverse(
      defautDeMasse: defautDeMasse,
      energieDeLiaison: energieDeLiaison,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonParNucleonInverse({
  String eln = r"E_{l/nuc}",
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? masseNoyau,
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleonInverse(
      eln: eln,
      A: A,
      Z: Z,
      X: X,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      uEnMeVC2: uEnMeVC2,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget defautDeMasseInverse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? defautDeMasse,
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      defautDeMasse: defautDeMasse,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget relationEinsteinInverse({
  String E = r" E ",
  String m = "m",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathRelationEinsteinInverse(
      E: E,
      m: m,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget activiteInverse({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_o",
  String lambda = r"\lambda",
  String t = r"t",
  String T = r"T",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActiviteInverse(
      A: A,
      Ao: Ao,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activite3Inverse({
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
    math: buildTex2SvgMathActivite3Inverse(
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

Widget activite4Inverse({
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
    math: buildTex2SvgMathActivite4Inverse(
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

Widget constanteRadioActiveInverse({
  String T = r"T",
  String constanteRadioactive = r"\lambda",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathConstanteRadioactiviteInverse(
      T: T,
      constanteRadioActive: constanteRadioactive,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
