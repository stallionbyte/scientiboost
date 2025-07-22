import 'package:flutter/material.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/exo8/correction/correction2/details/tex2svg_math.dart';

Widget demoMasseNoyauFromEnergieDeLiaisonParNucleon1({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String c = r"c",
  String eln = r"E_{l/nuc}",
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon1(
      Z: Z,
      mp: mp,
      A: A,
      mn: mn,
      X: X,
      c: c,
      eln: eln,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget demoMasseNoyauFromEnergieDeLiaisonParNucleon2({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon2(
      Z: Z,
      mp: mp,
      A: A,
      mn: mn,
      X: X,
      c: c,
      eln: eln,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget demoMasseNoyauFromEnergieDeLiaisonParNucleon3({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon3(
      Z: Z,
      mp: mp,
      A: A,
      mn: mn,
      X: X,
      c: c,
      eln: eln,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget demoMasseNoyauFromEnergieDeLiaisonParNucleon4({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",
  String c = r"c",
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon4(
      Z: Z,
      mp: mp,
      A: A,
      mn: mn,
      X: X,
      c: c,
      eln: eln,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget demoMasseNoyauFromEnergieDeLiaisonParNucleon5({
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String X = r"X",
  String eln = r"E_{l/nuc}",

  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathMasseNoyauFromEnergieDeLiaisonParNucleon5(
      Z: Z,
      mp: mp,
      A: A,
      mn: mn,
      X: X,

      eln: eln,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}
