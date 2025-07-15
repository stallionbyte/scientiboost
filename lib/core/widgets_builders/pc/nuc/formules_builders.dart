import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/builders.dart';

// envoyer dans widgetBuilders

const _scale = 6.0;

Widget mEgaleESurC2({String E = r" E ", String c = r" c ", bool bold = false}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathmEgaleESurC2(E: E, c: c, bold: bold),
    scale: 2.0,
  );
}

Widget relationEinstein({
  String E = r" E ",
  String m = "m",
  String c = r" c ",
  bool bold = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathRelationEinstein(E: E, m: m, c: c, bold: bold),
  );
}

Widget defautDeMasse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  bool bold = false,
  double? scale,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasse(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      bold: bold,
    ),
    scale: scale ?? _scale,
  );
}

Widget energieDeLiaisonParNucleon({
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? uEnMeVC2,
  String? masseNoyau,
  bool bold = false,
  double? scale,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleon(
      X: X,
      Z: Z,
      A: A,
      mp: mp,
      mn: mn,
      uEnMeVC2: uEnMeVC2,
      masseNoyau: masseNoyau,
      bold: bold,
    ),
    scale: scale ?? _scale,
  );
}
