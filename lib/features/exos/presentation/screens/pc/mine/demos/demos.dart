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
  return tex(math: r"H_2O \rightleftharpoons H_3O^+ + OH^-", scale: 2.0);
}
