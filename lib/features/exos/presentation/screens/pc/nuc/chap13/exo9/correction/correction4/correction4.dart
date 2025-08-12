import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Masse totale convertible en énergie :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{convertible} = 10\% M_{soleil} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m_{convertible} = 0,10 \times M_{soleil} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{convertible} =\\ 0,10 \times 1,99 \times 10^{30} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m_{convertible} =\\ 1,99 \times 10^{29}\ kg \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Perte de masse par seconde :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} \Delta m_{par\ s} =\\ N \times \Delta m_{par\ réaction} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m_{par\ s} =\\ 3,8 \times 10^{38} \times 5,04 \times 10^{-29} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m_{par\ s} =\\ 1,92 \times 10^{10}\ kg/s \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Durée de vie restante :"),

          EspConstants.esp40,

          regleDe3(
            part1: r"\Delta m_{par\ s}",
            part2: r"1\ s",
            part3: r"m_{convertible}",
            left: r"t",
            wrap: true,
            scale: 8.0,
            border: true,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} t = \frac{1,99 \times 10^{29}}{1,92 \times 10^{10}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t = 1,04 \times 10^{19}\ s \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Conversion en années :"),

          EspConstants.esp40,

          regleDe3(
            part1: r"3,156 \times 10^7\ s",
            part2: r"1\ an",
            part3: r"1,04 \times 10^{19}\ s",
            left: r"t",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"3,3 \times 10^{11}",
              unitTex2SvgMath: r"ans",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
