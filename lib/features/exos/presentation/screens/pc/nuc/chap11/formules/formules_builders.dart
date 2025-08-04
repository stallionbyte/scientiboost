import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'tex2svg_math.dart';

Widget relationEinstein({
  String E = r" E ",
  String m = "m",
  String c = r" c ",
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathRelationEinstein(
      E: E,
      m: m,
      c: c,
      uEnMeVC2: uEnMeVC2,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonAvecDefautDeMase({
  String el = r"E_l",
  String c = r" c ",
  String defautDeMasse = r" \Delta m ",
  String? uEnMeVC2,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.2,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonAvecDefautDeMase(
      el: el,
      c: c,
      defautDeMasse: defautDeMasse,
      uEnMeVC2: uEnMeVC2,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget defautDeMasse({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  bool wrap = false,
  String? masseNoyau,
  String? defautDeMasse,
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasse(
      wrap: wrap,
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      defautDeMasse: defautDeMasse,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonParNucleon({
  String eln = r"E_{l/nuc}",
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? uEnMeVC2,
  String? masseNoyau,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleon(
      eln: eln,
      X: X,
      Z: Z,
      A: A,
      mp: mp,
      mn: mn,
      uEnMeVC2: uEnMeVC2,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget energieDeLiaison({
  String el = r"E_l",
  String A = r"A",
  String Z = r"Z",
  String X = r"X",
  String mp = r"m_p",
  String mn = r"m_n",
  String? uEnMeVC2,
  String? masseNoyau,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaison(
      el: el,
      X: X,
      Z: Z,
      A: A,
      mp: mp,
      mn: mn,
      uEnMeVC2: uEnMeVC2,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
