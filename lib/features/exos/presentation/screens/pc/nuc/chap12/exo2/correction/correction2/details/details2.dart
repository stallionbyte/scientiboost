import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/details_builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          activite(scale: 1.8),

          EspConstants.esp20,

          transition(transition: "Premièrement"),

          EspConstants.esp20,

          result(left: r"A", value: r"3,7", unit: r"GBq", bold: false),

          EspConstants.esp20,

          transition(transition: "Or"),

          EspConstants.esp20,

          result(
            left: r"1 GBq",
            valueTex2SvgMath: r"10^9",
            unit: r"Bq",
            bold: false,
          ),

          EspConstants.esp20,

          transition(transition: "D'où"),

          EspConstants.esp20,

          result(
            left: r"A",
            valueTex2SvgMath: r"3,7 \cdot 10^9",
            unit: r"Bq",
            bold: false,
          ),

          EspConstants.esp20,

          transition(transition: "Deuxièmement"),

          EspConstants.esp20,

          result(left: r"t", value: r"48", unit: r"heures", bold: false),

          EspConstants.esp20,

          transition(transition: "troisèmenent"),

          EspConstants.esp20,

          result(
            leftTex2SvgMath: r"\lambda",
            valueTex2SvgMath: r"8,61 \cdot 10^{-2}",
            unitTex2SvgMath: r"jour^{-1}",
            bold: false,
          ),

          EspConstants.esp20,

          result(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            valueTex2SvgMath: r" \frac{8,61 \cdot 10^{-2}}{jour}",
            valueTex2SvgMathScale: 2.2,
            bold: false,
          ),

          EspConstants.esp20,

          transition(transition: "Or"),

          EspConstants.esp20,

          result(left: r"1 jour", value: r"24", unit: r"heures", bold: false),

          EspConstants.esp20,

          result(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            valueTex2SvgMath: r" \frac{8,61 \cdot 10^{-2}}{24\ heures}",
            valueTex2SvgMathScale: 2.2,
            bold: false,
          ),

          EspConstants.esp20,

          transition(transition: "Ainsi"),

          EspConstants.esp20,

          aoAvecALambdaTemps(
            A: r"3,7 \cdot 10^9",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24\ heures}",
            t: r"48\ heures",
            scale: 3.0,
            entraineQue: true,
          ),

          EspConstants.esp20,

          aoAvecALambdaTemps(
            A: r"3,7 \cdot 10^9",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24 \cancel{heures}}",
            t: r"48 \cancel{heures} ",
            scale: 3.0,
            entraineQue: true,
          ),

          EspConstants.esp20,

          aoAvecALambdaTemps(
            A: r"3,7 \cdot 10^9",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24}",
            t: r"48",
            scale: 3.0,
            entraineQue: true,
          ),
        ],
      ),
    );
  }
}
