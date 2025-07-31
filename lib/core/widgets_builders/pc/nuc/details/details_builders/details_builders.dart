import 'package:flutter/material.dart';

export 'inverses.dart';
export 'ao_a_lambda_t.dart';
export 'ener_liaison.dart';
export 'ener_liaison_nuc.dart';
export 't_lambda_a_ao.dart';
export 't_period_a_ao.dart';
export 'masse_a_m_na_lambda.dart';
export 'masse_a_m_na_periode_ln2.dart';
export 'nombre_disparu.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import '../tex2svg_math/tex2svg_math.dart';

Widget mEgaleESurC2({
  String E = r" E ",
  String c = r" c ",
  String m = r"m",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathmEgaleESurC2(
      E: E,
      c: c,
      m: m,
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
