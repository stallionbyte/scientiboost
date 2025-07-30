import 'package:flutter/material.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import '../tex2svg_math/tex2svg_math.dart';

Widget calculEnergieDeLiaison({
  String el = r"E_l",
  String Z = r"Z",
  String mp = r"m_p",
  String A = r"A",
  String mn = r"m_n",
  String uEnMeVC2 = PhyNucValuesConstants.uEnMeVC2,
  required String masseNoyau,
  bool bold = false,
  bool entraineQue = false,
  double scale = 1.0,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [
      energieDeLiaisonParNucleon(scale: 6.0),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison1(
          el: el,
          mp: mp,
          mn: mn,
          Z: Z,
          A: A,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison2(
          el: el,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),

      transition(transition: "Or"),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            TextSpan(text: "1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"MeV/c^2"),
          ],
        ),
      ),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            TextSpan(text: " 1u = $uEnMeVC2 "),

            buildTex2SvgInWidgetSpan(math: r"\frac{MeV}{c^2}", scale: 1.8),
          ],
        ),
      ),

      const SizedBox(height: 20),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: ExoConstants.richTextFontSize,

            color: Colors.black,
          ),
          children: <InlineSpan>[
            buildTex2SvgInWidgetSpan(math: r"\Rightarrow"),

            buildTex2SvgInWidgetSpan(math: r"1u \cdot c^2", offsetDy: -4.0),

            TextSpan(text: " = $uEnMeVC2 MeV"),
          ],
        ),
      ),

      const SizedBox(height: 20),

      transition(transition: "D'où"),

      const SizedBox(height: 20),

      buildTex2SvgInRichText(
        math: buildTex2SvgMathCalculEnergieDeLiaison3(
          el: el,
          Z: Z,
          mp: mp,
          A: A,
          mn: mn,
          masseNoyau: masseNoyau,
          uMeVC2: uEnMeVC2,
          bold: bold,
          entraineQue: entraineQue,
        ),
        scale: scale,
      ),

      const SizedBox(height: 20),
    ],
  );
}
