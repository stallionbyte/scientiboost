import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import '../tex2svg_math/tex2svg_math.dart';

Widget grandeurDisparue1({
  required String X,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathGrandeurDisparue1(
      X: X,
      Xo: Xo,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget grandeurDisparue2({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String X,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathGrandeurDisparue2(
      Xprime: Xprime,
      Xo: Xo,
      X: X,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget grandeurDisparue3({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathGrandeurDisparue3(
      Xprime: Xprime,
      Xo: Xo,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget grandeurDisparue4({
  // ignore: non_constant_identifier_names
  required String Xprime,
  // ignore: non_constant_identifier_names
  required String Xo,
  required String lambda,
  required String t,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathGrandeurDisparue4(
      Xprime: Xprime,
      Xo: Xo,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}
