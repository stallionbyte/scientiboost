import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/mine/demos/demos.dart';

import 'details1.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(
            txt: "Calcul des concentrations de toutes les espèces chimiques :",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Dissociation de Ca(OH)₂ dans l'eau (dibase forte) :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Ca(OH)_2 \rightarrow \\ Ca^{2+} + 2OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Autoprotolyse de l'eau :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 2H_2O \rightleftharpoons \\ H_3O^+ + OH^- \end{array}",
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
                const TextSpan(text: "Bilan des espèces : "),
                buildTex2SvgInWidgetSpan(
                  math: r"Ca^{2+}\ ;\ OH^-\ ;\ H_3O^+\ ;\ H_2O",
                ),
              ],
            ),
          ),

          EspConstants.esp40,

          sbTxt(
            txt:
                "Ca(OH)₂ n'apparaît pas dans le bilan car sa réaction avec l'eau est totale.",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de H₃O⁺ :"),

          EspConstants.esp40,

          sbTxt(txt: "À partir du pH :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [H_3O^+] = 10^{-pH} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [H_3O^+] = 10^{-11,7} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"2,00 \times 10^{-12}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de OH⁻ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [OH^-] = \frac{K_e}{[H_3O^+]} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{2,00 \times 10^{-12}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"5,00 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de Ca²⁺ par électroneutralité :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 2[Ca^{2+}] + [H_3O^+] = [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 2[Ca^{2+}] = [OH^-] - [H_3O^+] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "[H₃O⁺] << [OH⁻], on peut négliger [H₃O⁺] :"),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} 2[Ca^{2+}] \approx [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Ca^{2+}] \approx \frac{[OH^-]}{2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Ca^{2+}] \approx \frac{5,00 \times 10^{-3}}{2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Ca^{2+}]",
              valueTex2SvgMath: r"2,50 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
              operateur: r"\approx",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de Ca(OH)₂ :"),

          EspConstants.esp40,

          sbTxt(txt: "Ca(OH)₂ est une dibase forte, donc :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-] = 2 \times C_{Ca(OH)_2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{Ca(OH)_2} = \frac{[OH^-]}{2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{Ca(OH)_2} = \frac{5,00 \times 10^{-3}}{2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{Ca(OH)_2}",
              valueTex2SvgMath: r"2,50 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Remarque :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{Ca(OH)_2} = [Ca^{2+}] \\ = 2,50 \times 10^{-3}\ mol/L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          onNeCalculePasLaConcentrationDeLeau(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
