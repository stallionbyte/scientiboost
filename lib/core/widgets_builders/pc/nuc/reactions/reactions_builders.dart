import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'tex2svg_math.dart';

Widget betaPlus({
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
  String X3 = r"e",
  // ignore: non_constant_identifier_names
  String Z3 = r"1",
  // ignore: non_constant_identifier_names
  String A3 = r"0",
  // ignore: non_constant_identifier_names
  String X4 = r"\nu",
  // ignore: non_constant_identifier_names
  String Z4 = r"0",
  // ignore: non_constant_identifier_names
  String A4 = r"0",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgEquation13(
      A1: A1,
      Z1: Z1,
      X1: X1,

      A2: A2,
      Z2: Z2,
      X2: X2,

      A3: A3,
      Z3: Z3,
      X3: X3,

      A4: A4,
      Z4: Z4,
      X4: X4,

      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget betaMoins({
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
  String X3 = r"e",
  // ignore: non_constant_identifier_names
  String Z3 = r"-1",
  // ignore: non_constant_identifier_names
  String A3 = r"0",
  // ignore: non_constant_identifier_names
  String X4 = r"\bar{\nu}",
  // ignore: non_constant_identifier_names
  String Z4 = r"0",
  // ignore: non_constant_identifier_names
  String A4 = r"0",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgEquation13(
      A1: A1,
      Z1: Z1,
      X1: X1,

      A2: A2,
      Z2: Z2,
      X2: X2,

      A3: A3,
      Z3: Z3,
      X3: X3,

      A4: A4,
      Z4: Z4,
      X4: X4,

      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget alpha({
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
  String X3 = r"He",
  // ignore: non_constant_identifier_names
  String Z3 = r"2",
  // ignore: non_constant_identifier_names
  String A3 = r"4",

  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgEquation12(
      A1: A1,
      Z1: Z1,
      X1: X1,

      A2: A2,
      Z2: Z2,
      X2: X2,

      A3: A3,
      Z3: Z3,
      X3: X3,

      entraineQue: entraineQue,
      bold: bold,
    ),
    scale: scale,
  );
}
