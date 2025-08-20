import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/mine/demos/demos.dart';

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

          sbTxt(txt: "Calcul du nombre de moles de HCl :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{HCl} = \frac{V_{gaz}}{V_m} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{HCl} = \frac{0,224}{22,4} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"n_{HCl}",
              valueTex2SvgMath: r"0,0100",
              unitTex2SvgMath: r"mol",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration molaire de S₁ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S1} = \frac{n_{HCl}}{V_{solution}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} C_{S1} = \frac{0,0100}{2,0} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S1}",
              valueTex2SvgMath: r"5,00 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "pH de la solution S₁ :"),

          EspConstants.esp40,

          sbTxt(txt: "HCl est un monoacide fort, donc"),

          EspConstants.esp40,

          tex(math: r"pH = -logC_{S1}"),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} pH = -log(5,00 \times 10^{-3}) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"pH_{S1}",
              valueTex2SvgMath: r"2,30",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentrations de toutes les espèces chimiques :"),

          EspConstants.esp40,

          sbTxt(txt: "Autoprotolyse de l'eau :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 2H_2O \rightleftharpoons \\ H_3O^+ + OH^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Réaction de HCl avec l'eau :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} HCl + H_2O \rightarrow \\ H_3O^+ + Cl^- \end{array}",
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
                  math: r"H_3O^+\ ;\ Cl^-\ ;\ OH^-\ ;\ H_2O",
                ),
              ],
            ),
          ),

          EspConstants.esp40,

          sbTxt(
            txt:
                "HCl n'apparaît pas dans le bilan car sa réaction avec l'eau est totale.",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de H₃O⁺ :"),

          EspConstants.esp40,

          sbTxt(txt: "HCl est un monoacide fort, donc"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [H_3O^+] = C_{S1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"5,00 \times 10^{-3}",
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
                r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{5,00 \times 10^{-3}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"2,0 \times 10^{-12}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de Cl⁻ par électroneutralité :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [H_3O^+] = [Cl^-] + [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Cl^-] = [H_3O^+] - [OH^-] \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^-] = 5,00 \times 10^{-3} \\ - 2,0 \times 10^{-12} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]",
              valueTex2SvgMath: r"4,99 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Remarque :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^-] \approx [H_3O^+] \\ \approx 5 \times 10^{-3}\ mol/L \end{array}",
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
