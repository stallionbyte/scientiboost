import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'tex2svg_math.dart';

Widget nombreDeNoyauAvecMasse({
  String N = r"N",
  String m = r"m",
  String M = r"M",
  String avogadro = r"\mathcal{N}_A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
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
  return tex(
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
  return tex(
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

Widget masseEchantillonRadioactif({
  String m = r"m",
  // ignore: non_constant_identifier_names
  String mo = r"m_o",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathLoiDeDecroissanceLike(
      X: m,
      Xo: mo,
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
  return tex(
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
  return tex(
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
  return tex(
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
  return tex(
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

Widget activiteAvecTmoMNaTemps({
  String A = r"A",
  String T = r"T",
  String mo = r"m_0",
  String M = r"M",
  // ignore: non_constant_identifier_names
  String Na = r"\mathcal{N}",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  bool wrap = false,
  bool wrap2 = false,
  bool wrap3 = false,
  bool wrap4 = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathActiviteAvecTmoMNaTemps(
      wrap: wrap,
      wrap2: wrap2,
      wrap3: wrap3,
      wrap4: wrap4,
      A: A,
      T: T,
      mo: mo,
      M: M,
      Na: Na,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activiteAvecLambdaNoTemps({
  String A = r"A",
  String lambda = r"\lambda",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  String T = r"T",
  String t = r"t",
  bool wrap = false,
  bool wrap2 = false,
  bool wrap3 = false,
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathActiviteAvecLambdaNoTemps(
      wrap: wrap,
      wrap2: wrap2,
      wrap3: wrap3,
      A: A,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      No: No,
      t: t,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget activiteAvecLambdaN({
  String A = r"A",
  String lambda = r"\lambda",
  String N = r"N",
  String T = r"T",
  bool developpe = false,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathActiviteAvecLambdaN(
      A: A,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      N: N,
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
  return tex(
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
  return tex(
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

Widget perteDeMasseReaction12({
  // ignore: non_constant_identifier_names
  String X1 = r"X",
  // ignore: non_constant_identifier_names
  String Z1 = r"Z",
  // ignore: non_constant_identifier_names
  String A1 = r"A",

  // ignore: non_constant_identifier_names
  String X2 = r"X",
  // ignore: non_constant_identifier_names
  String Z2 = r"Z",
  // ignore: non_constant_identifier_names
  String A2 = r"A",

  // ignore: non_constant_identifier_names
  String X3 = r"X",
  // ignore: non_constant_identifier_names
  String Z3 = r"Z",
  // ignore: non_constant_identifier_names
  String A3 = r"A",

  String perteDeMasse = r"\Delta m",

  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathPerteDeMasseReaction12(
      A1: A1,
      Z1: Z1,
      X1: X1,

      A2: A2,
      Z2: Z2,
      X2: X2,

      A3: A3,
      Z3: Z3,
      X3: X3,

      perteDeMasse: perteDeMasse,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget energieReaction12({
  // ignore: non_constant_identifier_names
  String X1 = r"X",
  // ignore: non_constant_identifier_names
  String Z1 = r"Z",
  // ignore: non_constant_identifier_names
  String A1 = r"A",

  // ignore: non_constant_identifier_names
  String X2 = r"X",
  // ignore: non_constant_identifier_names
  String Z2 = r"Z",
  // ignore: non_constant_identifier_names
  String A2 = r"A",

  // ignore: non_constant_identifier_names
  String X3 = r"X",
  // ignore: non_constant_identifier_names
  String Z3 = r"Z",
  // ignore: non_constant_identifier_names
  String A3 = r"A",

  String E = r"E",

  String c = r"c",

  String? m1,

  String? m2,

  String? m3,

  String? uEnMeVC2,

  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathEnergieReaction12(
      A1: A1,
      Z1: Z1,
      X1: X1,

      A2: A2,
      Z2: Z2,
      X2: X2,

      A3: A3,
      Z3: Z3,
      X3: X3,

      E: E,
      c: c,
      m1: m1,
      m2: m2,
      m3: m3,
      uEnMeVC2: uEnMeVC2,

      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget loiDeDecroissance({
  String N = r"N",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  String lambda = r"\lambda",
  String T = r"T",
  String t = r"t",
  bool bold = false,
  bool developpe = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathLoiDeDecroissanceLike(
      X: N,
      Xo: No,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget loiDeDecroissanceMasse({
  String m = r"m",
  // ignore: non_constant_identifier_names
  String mo = r"m_0",
  String lambda = r"\lambda",
  String t = r"t",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  bool developpe = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathLoiDeDecroissanceLike(
      X: m,
      Xo: mo,
      lambda: developpe ? r"\frac{ln2}{" + T + r"}" : lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget periodeAvecLambda({
  String T = r"T",
  String lambda = r"\lambda",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return tex(
    math: buildTex2SvgMathPeriodeAvecLambda(
      T: T,
      lambda: lambda,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
