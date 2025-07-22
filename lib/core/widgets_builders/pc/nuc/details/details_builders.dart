import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'tex2svg_math.dart';

Widget mEgaleESurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathmEgaleESurC2(
      E: E,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

WidgetSpan eSurC2({
  String E = r" E ",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInWidgetSpan(
    math: buildTex2SvgMathESurC2(
      E: E,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

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
