import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'tex2svg_math.dart';

Widget relationEinstein({
  String E = r" E ",
  String m = "m",
  String c = r" c ",
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathRelationEinstein(E: E, m: m, c: c, bold: bold),
    scale: scale,
  );
}

Widget energieDeLiaison({
  String m = r"m",
  String c = r" c ",
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaison(m: m, c: c, bold: bold),
    scale: scale,
  );
}

Widget energieDeLiaisonAvecDefautDeMase({
  String el = r"E_l",
  String c = r" c ",
  String defautDeMasse = r" \Delta m ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonAvecDefautDeMase(
      el: el,
      c: c,
      defautDeMasse: defautDeMasse,
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
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
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
    scale: scale,
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
  double scale = 1.0,
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
    scale: scale,
  );
}

Widget nombreDeNoyauAvecMasse({
  String N = r"N",
  String m = r"m",
  String M = r"M",
  String avogadro = r"\mathcal{N}_A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDeNoyauAvecMasse(
      N: N,
      m: m,
      M: M,
      avogadro: avogadro,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
