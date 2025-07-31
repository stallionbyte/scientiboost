import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'grandeur_disaprue_helpers.dart';

Widget nombreDisparue({
  String N = r"N",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  // ignore: non_constant_identifier_names
  String Nprime = r"N'",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      transition(transition: "Nombre de noyaux initiaux"),
      EspConstants.esp20,
      buildTex2SvgInRichText(math: r"N_0", scale: scale),
      EspConstants.esp40,

      transition(
        transition: "Nombre de noyaux restants non encore désintégrés",
      ),
      EspConstants.esp20,
      grandeurDisparue1(
        X: N,
        Xo: No,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: false,
        scale: scale,
      ),
      EspConstants.esp40,

      transition(transition: "Nombre de noyaux disparus"),
      EspConstants.esp20,
      result(
        left: r"N'",
        value: r"Nombre de noyaux initiaux - nombre de noyaux restants",
      ),
      EspConstants.esp20,
      TransitionConstants.dou,
      EspConstants.esp20,
      grandeurDisparue2(
        Xprime: Nprime,
        Xo: No,
        X: N,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      grandeurDisparue3(
        Xprime: Nprime,
        Xo: No,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
      grandeurDisparue4(
        Xprime: Nprime,
        Xo: No,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
    ],
  );
}
