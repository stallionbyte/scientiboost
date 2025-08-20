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

          sbTxt(txt: "Concentration molaire de S₂ :"),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de la solution mère S₀ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S_0} = \frac{d \times \% \times 1000}{M_{H_2SO_4}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{S_0} = \frac{1,84 \times 0,96 \times 1000}{98,0} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S_0}",
              valueTex2SvgMath: r"18,0",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Application de la dilution :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S_0} \times V_{S0} = C_{S2} \times V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} C_{S2} = \frac{C_{S_0} \times V_{S0}}{V_{S2}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} C_{S2} = \frac{18,0 \times 0,2}{1000,2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"C_{S2}",
              valueTex2SvgMath: r"3,60 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "pH de la solution S₂ :"),

          EspConstants.esp40,

          sbTxt(txt: "H₂SO₄ est un diacide fort, donc : "),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} H_2SO_4 + 2H_2O \rightarrow \\ 2H_3O^+ + SO_4^{2-} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "H₂SO₄ est un diacide fort, donc :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} pH = -log2C_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} pH = -log(2 \times 3,60 \times 10^{-3}) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"pH_{S2}",
              valueTex2SvgMath: r"2,14",
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

          sbTxt(txt: "Réaction de H₂SO₄ avec l'eau (diacide fort) :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} H_2SO_4 + 2H_2O \rightarrow \\ 2H_3O^+ + SO_4^{2-} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Bilan des espèces : H₃O⁺, SO₄²⁻, OH⁻, H₂O"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "H₂SO₄ n'apparaît pas dans le bilan car sa réaction avec l'eau est totale.",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de H₃O⁺ :"),

          EspConstants.esp40,

          sbTxt(txt: "H₂SO₄ est un diacide fort, donc :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [H_3O^+] = 2 \times C_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+] = 2 \times 3,60 \times 10^{-3} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]",
              valueTex2SvgMath: r"7,20 \times 10^{-3}",
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
                r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{7,20 \times 10^{-3}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]",
              valueTex2SvgMath: r"1,39 \times 10^{-12}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de SO₄²⁻ par électroneutralité :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+] = 2[SO_4^{2-}] + [OH^-] \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 2[SO_4^{2-}] + [OH^-] = [H_3O^+]  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \ 2[SO_4^{2-}]  = [H_3O^+] - [OH^-]  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [SO_4^{2-}] = \frac{[H_3O^+] - [OH^-]}{2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}] = \\ \frac{7,20 \times 10^{-3} - 1,39 \times 10^{-12}}{2} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]",
              valueTex2SvgMath: r"3,59 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Remarque :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}] \approx C_{S2} \\ \approx 3,59 \times 10^{-3}\ mol/L \end{array}",
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
