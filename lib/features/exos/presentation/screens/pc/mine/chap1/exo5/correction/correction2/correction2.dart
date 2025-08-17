import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/mine/demos/demos.dart';

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
          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions OH⁻ dans S2 :"),

          EspConstants.esp40,

          transition(transition: "Donnée de l'énoncé"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"2,5 \times 10^{-4}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions H₃O⁺ dans S2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [H_3O^+] = \frac{K_e}{[OH^-]} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+] = \frac{10^{-14}}{2,5 \times 10^{-4}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"4,0 \times 10^{-11}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Dissociation de NaOH dans l'eau :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} NaOH \rightarrow Na^+ + OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Autoprotolyse: "),

          EspConstants.esp40,

          autoprotolyse(),

          EspConstants.esp40,

          sbTxt(txt: "Bilan des espèces: "),

          tex(math: r"Na^+\ ;\ H_3O^+\ ;\ OH^-"),

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
                      "NaOH n'apparait pas dans le bilan des espèces car sa réaction avec l'eau est totale \n\n",
                ),

                buildTex2SvgInWidgetSpan(math: r"H_2O"),

                const TextSpan(
                  text:
                      " n'apparait pas dans le bilan des espèces car l'eau est le solvant",
                ),
              ],
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Na⁺ par électroneutralité :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [Na^+] + [H_3O^+] = [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Na^+] = [OH^-] - [H_3O^+] \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Na^+] = 2,5 \times 10^{-4} \\ - 4,0 \times 10^{-11} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Na^+]",
              valueTex2SvgMath: r"2,5 \times 10^{-4}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Na^+] \approx [OH^-] \\ \approx 2,5 \times 10^{-4}\ mol/L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
