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

          TransitionConstants.premierement,

          EspConstants.esp20,

          expression(left: r"A", right: r"3,7 GBq"),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          expression(left: r"1 GBq", rightTex2SvgMath: r"10^9 \ Bq"),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(left: r"A", rightTex2SvgMath: r"3,7 \cdot 10^9 \ Bq"),

          EspConstants.esp20,

          TransitionConstants.deuxiemement,

          EspConstants.esp20,

          expression(left: r"t", right: r"48 heures"),

          EspConstants.esp20,

          TransitionConstants.troisiemement,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\lambda",
            rightTex2SvgMath: r"8,61 \cdot 10^{-2} \ jour^{-1}",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            rightTex2SvgMath: r" \frac{8,61 \cdot 10^{-2}}{jour}",
          ),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          expression(left: r"1 jour", right: r"24 heures"),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            rightTex2SvgMath: r" \frac{8,61 \cdot 10^{-2}}{24\ heures}",
          ),

          EspConstants.esp20,

          TransitionConstants.ainsi,

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
