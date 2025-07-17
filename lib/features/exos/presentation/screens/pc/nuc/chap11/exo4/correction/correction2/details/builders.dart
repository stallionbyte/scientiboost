import 'tex2svg_math.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:flutter/material.dart';

Widget defautDeMasseInverse2({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse2(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget defautDeMasseInverse3({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse3(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget defautDeMasseInverse4({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse4(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget defautDeMasseInverse5({
  String X = r" X ",
  String A = r" A ",
  String Z = r" Z ",
  String mp = r" m_p ",
  String mn = r" m_n ",
  String? masseNoyau,
  String? defautDeMasse,
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseInverse5(
      X: X,
      A: A,
      Z: Z,
      mp: mp,
      mn: mn,
      masseNoyau: masseNoyau,
      defautDeMasse: defautDeMasse,
      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
