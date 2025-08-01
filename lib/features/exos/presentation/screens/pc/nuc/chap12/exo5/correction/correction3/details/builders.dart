import 'package:flutter/material.dart';
// Assuming these are paths in your project.
// You might need to adjust them based on your file structure.
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'tex2svg_math.dart';

Widget nombreDisparueSuite1({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite1(
      Ao: Ao,
      lambda: lambda,
      No: No,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite2({
  String lambda = r"\lambda",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite2(
      lambda: lambda,
      No: No,
      Ao: Ao,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite3({
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String lambda = r"\lambda",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite3(
      No: No,
      Ao: Ao,
      lambda: lambda,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite4({
  String lambda = r"\lambda",
  String T = r"T",
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite4(
      lambda: lambda,
      T: T,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite5({
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite5(
      No: No,
      Ao: Ao,
      T: T,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite6({
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String T = r"T",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite6(
      No: No,
      Ao: Ao,
      T: T,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite7({
  // ignore: non_constant_identifier_names
  String NPrime = r"N'",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String T = r"T",
  String lambda = r"\lambda",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite7(
      NPrime: NPrime,
      Ao: Ao,
      T: T,
      lambda: lambda,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget nombreDisparueSuite8({
  // ignore: non_constant_identifier_names
  String NPrime = r"N'",
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  String T = r"T",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathNombreDisparueSuite8(
      NPrime: NPrime,
      Ao: Ao,
      T: T,
      t: t,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

// --- Widget récapitulatif ---

Widget nombreDisparueSuite({
  // ignore: non_constant_identifier_names
  String Ao = r"A_0",
  // ignore: non_constant_identifier_names
  String No = r"N_0",
  String lambda = r"\lambda",
  String T = r"T",
  // ignore: non_constant_identifier_names
  String NPrime = r"N'",
  String t = r"t",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      nombreDisparueSuite1(
        Ao: Ao,
        lambda: lambda,
        No: No,
        bold: bold,
        entraineQue: false,
        scale: 1.2,
      ),
      EspConstants.esp40,
      nombreDisparueSuite2(
        lambda: lambda,
        No: No,
        Ao: Ao,
        bold: bold,
        entraineQue: entraineQue,
        scale: 1.2,
      ),
      EspConstants.esp40,
      nombreDisparueSuite3(
        No: No,
        Ao: Ao,
        lambda: lambda,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
      nombreDisparueSuite4(lambda: lambda, T: T, bold: bold, scale: 1.8),
      EspConstants.esp40,
      nombreDisparueSuite5(
        No: No,
        Ao: Ao,
        T: T,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
      nombreDisparueSuite6(
        No: No,
        Ao: Ao,
        T: T,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
      nombreDisparueSuite7(
        NPrime: NPrime,
        Ao: Ao,
        T: T,
        lambda: lambda,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: scale,
      ),
      EspConstants.esp40,
      nombreDisparueSuite8(
        NPrime: NPrime,
        Ao: Ao,
        T: T,
        t: t,
        bold: bold,
        entraineQue: entraineQue,
        scale: 4.0,
      ),
      EspConstants.esp40,

      transition(
        transition:
            "Le nombre de noyaux disparu N' qu'on vient de déterminer correspond au nombre de désintégrations, car à chaque désintégration un noyau disparait",
      ),
    ],
  );
}
