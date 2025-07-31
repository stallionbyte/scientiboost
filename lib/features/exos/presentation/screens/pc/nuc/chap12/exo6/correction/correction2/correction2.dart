import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/reactions/reactions_builders.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp20,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Soit x le nombre de désintégrations "),

                buildTex2SvgInWidgetSpan(math: r"\alpha", scale: 0.5),

                const TextSpan(text: " et y le nombre de désintégrations "),

                buildTex2SvgInWidgetSpan(math: r"\beta ^-"),
              ],
            ),
          ),

          EspConstants.esp20,

          reaction13(
            scale: 2.0,
            X1: r"U",
            Z1: r"92",
            A1: r"238",
            X2: r"Pb",
            Z2: r"82",
            A2: r"206",
            X3: r"\alpha",
            cof3: r"x",
            Z3: r"2",
            A3: r"4",
            X4: r"\beta",
            cof4: r"y",
            Z4: r"-1",
            A4: r"\ \ \ 0",
          ),

          EspConstants.esp20,

          transition(transition: "utilisons les lois de conservation"),

          EspConstants.esp20,

          transition(
            transition: "Selon la loi de conservation du nombre de masse",
          ),

          EspConstants.esp20,

          result(
            bold: false,
            left: r"238",
            valueTex2SvgMath: r"206 \ + \ 4 \ \cdot \ x",
            valueTex2SvgMathScale: 0.7,
          ),

          EspConstants.esp20,

          result(
            bold: false,
            leftTex2SvgMath: r"\Rightarrow 206 \ + \ 4 \cdot x\ ",
            leftTex2SvgMathScale: 0.7,
            value: r"238",
          ),

          EspConstants.esp20,

          result(
            bold: false,
            leftTex2SvgMath: r"\Rightarrow \ 4 \cdot x\ ",
            leftTex2SvgMathScale: 0.7,
            value: r"238 - 206",
          ),

          EspConstants.esp20,

          result(
            bold: false,
            leftTex2SvgMath: r"\Rightarrow \ 4 \cdot x\ ",
            leftTex2SvgMathScale: 0.7,
            value: r"32",
          ),

          EspConstants.esp20,

          result(
            bold: false,
            leftTex2SvgMath: r"\Rightarrow \ x",
            leftTex2SvgMathScale: 0.7,
            valueTex2SvgMath: r"\frac{32}{4}",
            valueTex2SvgMathScale: 2.0,
          ),

          EspConstants.esp20,

          BordersWrapper(wrapped: result(left: r"x", value: r"8")),

          EspConstants.esp20,

          transition(
            transition: "Selon la loi de conservation du nombre de charge",
          ),

          EspConstants.esp20,

          result(
            bold: false,
            left: r"92",
            valueTex2SvgMath: r"82\ +\ 2 \cdot x\ -\ y ",
            valueTex2SvgMathScale: 0.7,
          ),

          EspConstants.esp20,

          result(
            bold: false,
            left: r"92",
            valueTex2SvgMath: r"82\ +\ 2 \cdot 8\ -\ y ",
            valueTex2SvgMathScale: 0.7,
          ),

          EspConstants.esp20,

          result(bold: false, left: r"92", value: r"82 + 16 - y "),

          EspConstants.esp20,

          result(bold: false, left: r"92", value: r"98 - y "),

          EspConstants.esp20,

          result(bold: false, left: r"98 - y", value: r"92"),

          EspConstants.esp20,

          result(bold: false, left: r"- y", value: r"92 - 98"),

          EspConstants.esp20,

          result(bold: false, left: r"- y", value: r"-6"),

          EspConstants.esp20,

          BordersWrapper(wrapped: result(left: r"y", value: r"6")),

          EspConstants.esp20,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "8 désintégrations "),

                buildTex2SvgInWidgetSpan(math: r"\alpha", scale: 0.5),

                const TextSpan(text: " et 6 désintégrations "),

                buildTex2SvgInWidgetSpan(math: r"\beta ^-"),

                const TextSpan(
                  text:
                      " sont nécessaires pour passer de l'uranium-238 au plomb-206 ",
                ),
              ],
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
