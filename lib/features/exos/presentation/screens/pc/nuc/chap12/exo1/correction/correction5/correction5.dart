import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details1.dart';
import 'details2.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(
                  text:
                      "Le nombre de noyaux dans un échantillon d'un organisme vivant correspond au nombre de noyaux initiaux à l'instatnt ",
                ),

                buildTex2SvgInWidgetSpan(math: r" t_o \ (\ soit\ N_o \ )"),
              ],
            ),
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t = -\frac{1}{\lambda} \ln\left(\frac{A}{\lambda \cdot N_0}\right) \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ t =\\ -\frac{1}{3,8 \cdot 10^{-12}} \ln\left(\frac{9120}{3,8 \cdot 10^{-12} \cdot 6 \cdot 10^{15}}\right) \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"2,41 \cdot 10^{11}",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En seondes"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"7636",
              unitTex2SvgMath: r"ans",
            ),
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
