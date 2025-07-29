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
  String? masseNoyau,
  String? defautDeMasse,
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

Widget constanteRadioactivite({
  String constanteRadioActive = r"\lambda",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathConstanteRadioactivite(
      constanteRadioActive: constanteRadioActive,
      T: T,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activite({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_o",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathLoiDeDecroissanceLike(
      X: A,
      Xo: Ao,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget tempsAvecLambdaAEtAo({
  String A = r"A",
  // ignore: non_constant_identifier_names
  String Ao = r"A_o",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathTempsAvecLambdaXEtXo(
      A: A,
      Ao: Ao,
      lambda: lambda,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activite2({
  String A = r"A",
  String lambda = r"\lambda",
  String N = r"N",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActivite2(
      A: A,
      lambda: lambda,
      N: N,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activite3({
  String A = r"A",
  String lambda = r"\lambda",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActivite3(
      A: A,
      lambda: lambda,
      m: m,
      M: M,
      Na: Na,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activite4({
  String A = r"A",
  String T = r"T",
  String m = r"m",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathActivite4(
      A: A,
      T: T,
      m: m,
      M: M,
      Na: Na,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget masseAvecAMNaLambda({
  String m = r"m",
  String A = r"A",
  String M = r"M",
  String lambda = r"\lambda",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaLambda(
      A: A,
      M: M,
      lambda: lambda,
      Na: Na,
      m: m,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget masseAvecAMNaTln2({
  String m = r"m",
  String A = r"A",
  String M = r"M",
  String T = r"T",
  String N = r"N",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseAvecAMNaTln2(
      A: A,
      M: M,
      T: T,
      N: N,
      m: m,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
