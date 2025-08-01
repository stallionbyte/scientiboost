import 'package:flutter/material.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 't_fraction_grandeur_restante_helpers.dart'; // Assuming the helper functions are in this file

Widget tempsFractionNombreNoyauxRestant({
  String N = r"N",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      transition(transition: "Nombre de noyaux restants"),
      EspConstants.esp20,
      tempsFractionGrandeurRestante1(
        X: N,
        Xo: No,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: false,
        scale: scale,
      ),
      EspConstants.esp40,

      transition(transition: "Condition: il reste 2/3 de la quantité initiale"),
      EspConstants.esp20,
      tempsFractionGrandeurRestante2(
        X: N,
        Xo: No,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante3(
        Xo: No,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante4(
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante5(
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante6(
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante7(
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,

      tempsFractionGrandeurRestante8(
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
    ],
  );
}
