import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'grandeur_disaprue_helpers.dart';

Widget masseDisparue({
  String m = r"m",
  String mo = r"m_0",
  String mprime = r"m'",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      transition(transition: "Masse initiale"),
      EspConstants.esp20,
      buildTex2SvgInRichText(math: r"m_0", scale: scale),
      EspConstants.esp40,

      transition(transition: "Masse restante non encore désintégrés"),
      EspConstants.esp20,
      grandeurDisparue1(
        X: m,
        Xo: mo,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: false,
        scale: scale,
      ),
      EspConstants.esp40,

      transition(transition: "Masse disparue"),
      EspConstants.esp20,
      result(left: r"m'", value: r"Masse initiale - Masse restante"),
      EspConstants.esp20,
      TransitionConstants.dou,
      EspConstants.esp20,
      grandeurDisparue2(
        Xprime: mprime,
        Xo: mo,
        X: m,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      grandeurDisparue3(
        Xprime: mprime,
        Xo: mo,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      grandeurDisparue4(
        Xprime: mprime,
        Xo: mo,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
    ],
  );
}
