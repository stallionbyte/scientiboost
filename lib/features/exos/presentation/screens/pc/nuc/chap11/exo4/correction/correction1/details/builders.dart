import 'tex2svg_math.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:flutter/material.dart';

Widget energieDeLiaisonInverse2({
  String el = r"E_l",
  String c = r" c ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonInverse2(
      el: el,
      c: c,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonParNucleonAvecEnergieDeLiaison({
  String el = r"E_l",
  String A = r" A ",
  bool bold = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleonAvecEnergieDeLiaison(
      el: el,
      A: A,
      bold: bold,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonParNucleonAvecEnergieDeLiaisonInverse({
  String el = r"E_l",
  String A = r" A ",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonParNucleonAvecEnergieDeLiaisonInverse(
      el: el,
      A: A,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget energieDeLiaisonAvecEnergieDeLiaisonParNucleon({
  String eln = r"E_{l/n}",
  String A = r" A ",
  bool bold = false,
  double scale = 1.0,
  bool entraineQue = false,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathEnergieDeLiaisonAvecEnergieDeLiaisonParNucleon(
      eln: eln,
      A: A,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}

Widget defautDeMasseAvecEnergieDeLiaisonParNucleon({
  String eln = r" E_{l/n} ",
  String c = r" c ",
  String A = r"A",
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return buildTex2SvgInRichText(
    math: buildTex2SvgMathDefautDeMasseAvecEnergieDeLiaisonParNucleon(
      eln: eln,
      c: c,
      A: A,
      bold: bold,
      entraineQue: entraineQue,
    ),
    scale: scale,
  );
}
