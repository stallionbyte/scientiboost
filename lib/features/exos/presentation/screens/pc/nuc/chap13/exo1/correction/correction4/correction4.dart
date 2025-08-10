import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';

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

          sbTxt(txt: "Nombre de noyaux consommés par jour :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} N_{jour} = \frac{m}{M} \times \mathcal{N_A} \end{array}",
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
                r"\begin{array}{l} N_{jour} = \frac{3700}{235} \times 6,022 \times 10^{23} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"N_{jour}",
              valueTex2SvgMath: r"9,48 \times 10^{24}",
              unitTex2SvgMath: r"noyaux",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Énergie produite par jour :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} E_{jour} = N_{jour} \times Q_{par\ fission} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{jour} = 9,48 \times 10^{24} \times 2,74 \times 10^{-11} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{jour}",
              valueTex2SvgMath: r"2,60 \times 10^{14}",
              unitTex2SvgMath: r"J",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Puissance thermique moyenne :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} P_{th} = \frac{E_{jour}}{\Delta t} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} P_{th} = \frac{2,60 \times 10^{14}}{86400} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"P_{th}",
              valueTex2SvgMath: r"3,009 \cdot 10^9",
              unitTex2SvgMath: r"W",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En MW"),

          EspConstants.esp40,

          Details3(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"P_{th}",
              valueTex2SvgMath: r"3,009 \cdot 10^3",
              unitTex2SvgMath: r"MW",
            ),
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"P_{th}",
              valueTex2SvgMath: r"3009",
              unitTex2SvgMath: r"MW",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
