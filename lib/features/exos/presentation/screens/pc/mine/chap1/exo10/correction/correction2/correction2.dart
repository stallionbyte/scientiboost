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

          sbTxt(txt: "Autoprotolyse"),

          EspConstants.esp40,

          autoprotolyse(),

          EspConstants.esp40,

          sbTxt(txt: "équation de dissolution :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} NaOH \rightarrow Na^+ + OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: ExoConstants.richTextFontSize,

                color: Colors.black,
              ),
              children: <InlineSpan>[
                const TextSpan(text: "Bilan des espèces"),

                buildTex2SvgInWidgetSpan(math: r"Na^+\ ;\ OH^-\ ;\ H_3O^+"),

                const TextSpan(text: "\n\n"),

                const TextSpan(
                  text:
                      "NaOH n'apparait pas dans le bilan des espèces car sa dissolution dans l'eau est totale \n\n",
                ),

                buildTex2SvgInWidgetSpan(math: r"H_2O"),

                const TextSpan(
                  text:
                      " n'apparait pas dans le bilan des espèces car l'eau est le solvant \n\n",
                ),
              ],
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Na⁺ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_{NaOH}}{1} = \frac{[Na^+]}{1} \\ = \frac{[OH^-]_{NaOH}}{1} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Na^+] = C_{NaOH} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Na^+]",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions OH⁻ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [OH^-] = 10^{pH-14} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [OH^-] = 10^{13,3-14} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-] = 0,199\ mol/L \\ \approx 0,200\ mol/L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
              operateur: r"\approx",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions H₃O⁺ :"),

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
                r"\begin{array}{l} [H_3O^+] = \frac{10^{-14}}{0,200} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"5,0 \times 10^{-14}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
