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

          sbTxt(txt: "Calcul de [H₃O⁺] et [OH⁻] :"),

          EspConstants.esp40,

          sbTxt(txt: "On sait que :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[H_3O^+]}{[OH^-]} = 2,5 \times 10^{10} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} K_e = [H_3O^+][OH^-] = 10^{-14} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "De la première équation :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [H_3O^+] = 2,5 \times 10^{10} \\ \times [OH^-] \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "En substituant dans le produit ionique :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} K_e = (2,5 \times 10^{10} \times [OH^-]) \\ \times [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} 10^{-14} = 2,5 \times 10^{10} \\ \times [OH^-]^2 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [OH^-]^2 = \frac{10^{-14}}{2,5 \times 10^{10}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-]^2 = \frac{10^{-14}}{2,5 \times 10^{10}} \\ = 4,0 \times 10^{-25} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-] = \sqrt{4,0 \times 10^{-25}} \end{array}",
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

          sbTxt(txt: "Calcul de [H₃O⁺] :"),

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
                r"\begin{array}{l} [H_3O^+] = \frac{10^{-14}}{2,0 \times 10^{-12}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"5,0 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Équation de dissolution de HCl :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} HCl + H_2O \rightarrow H_3O^+ + Cl^- \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Autoprotolyse de l'eau :"),

          EspConstants.esp40,

          autoprotolyse(),

          EspConstants.esp40,

          sbTxt(txt: "Bilan des espèces :"),

          tex(math: r"H_3O^+\ ;\ OH^-\ ;\ Cl^-"),

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
                      "HCl n'apparait pas dans le bilan des espèces car sa réaction avec l'eau est totale \n\n",
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

          sbTxt(txt: "Calcul de [Cl⁻] par électroneutralité :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} [H_3O^+] = [OH^-] + [Cl^-] \end{array}",
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
                r"\begin{array}{l} [Cl^-] = 5,0 \times 10^{-3} \\ - 2,0 \times 10^{-12} \end{array}",
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
                r"\begin{array}{l} [Cl^-] \approx [H_3O^+] \\ \approx 5,0 \times 10^{-3}\ mol/L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Calcul du pH :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} pH = -log[H_3O^+] \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} pH = -log(5,0 \times 10^{-3}) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"pH",
              valueTex2SvgMath: r"2,30",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
