import 'package:flutter/material.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

Widget cEgalemSurMV() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      transition(transition: "Formule de la concentration molaire"),
      EspConstants.esp40,

      tex(math: r"\begin{array}{l} C = \frac{n}{V} \end{array}", scale: 2.0),
      EspConstants.esp40,

      transition(transition: "Nombre de moles"),
      EspConstants.esp40,

      tex(math: r"\begin{array}{l} n = \frac{m}{M} \end{array}", scale: 2.0),
      EspConstants.esp40,

      transition(transition: "En substituant"),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \ C = \frac{\frac{m}{M}}{V} \end{array}",
        scale: 4.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{\frac{m}{M}}{ \frac{V}{1}} \end{array}",
        scale: 5.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{m}{M} \cdot \frac{1}{V} \end{array}",
        scale: 4.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{m}{M \times V} \end{array}",
        scale: 2.0,
      ),
    ],
  );
}

Widget mEgaleMVC() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      cEgalemSurMV(),

      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  \frac{m}{M \times V} = C \end{array}",
        scale: 2.0,
      ),

      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  m = M \cdot V \cdot C \end{array}",
        scale: 2.0,
      ),
    ],
  );
}

Widget cEgaleVgazSurVmVs() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      transition(transition: "Formule de la concentration molaire"),
      EspConstants.esp40,

      tex(math: r"\begin{array}{l} C = \frac{n}{V} \end{array}", scale: 2.0),
      EspConstants.esp40,

      transition(transition: "Nombre de moles"),
      EspConstants.esp40,

      tex(
        math: r"\begin{array}{l} n = \frac{V_{gaz}}{V_m} \end{array}",
        scale: 2.0,
      ),
      EspConstants.esp40,

      transition(transition: "En substituant"),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \ C = \frac{\frac{V_{gaz}}{V_m}}{V} \end{array}",
        scale: 4.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{\frac{V_{gaz}}{V_m}}{ \frac{V}{1}} \end{array}",
        scale: 5.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{V_{gaz}}{V_m} \cdot \frac{1}{V} \end{array}",
        scale: 4.0,
      ),
      EspConstants.esp40,

      tex(
        math:
            r"\begin{array}{l} \Rightarrow \  C = \frac{V_{gaz}}{V_m \times V} \end{array}",
        scale: 2.0,
      ),
    ],
  );
}

Widget autoprotolyse() {
  return tex(math: r"2H_2O \rightleftharpoons H_3O^+ + OH^-", scale: 2.0);
}

Widget onNeCalculePasLaConcentrationDeLeau() {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        fontSize: ExoConstants.richTextFontSize,
        height: 1.5,
        color: Colors.black,
      ),
      children: <InlineSpan>[
        const TextSpan(
          text: "On ne calcule pas la concentration des molécules d'eau ",
        ),

        buildTex2SvgInWidgetSpan(math: r"H_2O"),

        const TextSpan(text: " car l'eau est le solvant"),
      ],
    ),
  );
}

Widget aNegligeableDevantB({
  String a = r"[H_3O^+]",
  String b = r"[OH^-]",
  required String valueA,
  required String valueB,
  required String quotient,
}) {
  double scale = 3.0;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      tex(
        math:
            r"\frac{" +
            a +
            r"}{" +
            b +
            r"} = \frac{" +
            valueA +
            r"}{" +
            valueB +
            r"}",

        scale: scale,
      ),

      EspConstants.esp40,

      tex(math: r"\frac{" + a + r"}{" + b + r"} = " + quotient, scale: scale),

      EspConstants.esp40,

      tex(
        math: r"\frac{" + a + r"}{" + b + r"} = " + quotient + r"\leq 10^{-4}",
        scale: scale,
      ),

      EspConstants.esp40,
      transition(transition: "Donc"),
      EspConstants.esp40,
      tex(math: a + r"<<" + b, scale: scale),
    ],
  );
}
