import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';
import 'details4.dart';

class Correction3 extends ConsumerStatefulWidget {
  const Correction3({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction3State();
}

class _Correction3State extends ConsumerState<Correction3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Défaut de masse du Sr-96 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} \Delta m = \frac{E_l}{c^2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          tex(
            math:
                r"\begin{array}{l} \Delta m = \frac{833,1\ MeV}{c^2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",

              valueTex2SvgMath: r"833,1",
              unitTex2SvgMath: r"MeV/c^2",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En u"),
          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = \frac{833,1}{931,5} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\Delta m",
              valueTex2SvgMath: r"0,894",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse du noyau Sr-96 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m(^{96}Sr) = m_{\text{nucléons}} - \Delta m \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} m(^{96}Sr) = 96,779 - 0,894 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details3(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(^{96}Sr)",
              valueTex2SvgMath: r"95,885",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En Kg"),

          EspConstants.esp40,

          Details4(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(^{96}Sr)",

              valueTex2SvgMath: r"1,59 \cdot 10^{-25}",
              unitTex2SvgMath: r"kg",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
