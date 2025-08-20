import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/mine/demos/demos.dart';

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

          sbTxt(txt: " pH du mélange S₃ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de H₃O⁺ provenant de S₁ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{H_3O^+,S1} = \\ [H_3O^+]_{S1} \times V_{S1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{H_3O^+,S1} = \\ 5,00 \times 10^{-3} \times 0,600 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{H_3O^+,S1} = 3,00 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de H₃O⁺ provenant de S₂ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{H_3O^+,S2} = \\ [H_3O^+]_{S2} \times V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{H_3O^+,S2} = \\ 7,20 \times 10^{-3} \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{H_3O^+,S2} = 1,44 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Volume total du mélange :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} V_{S3} = V_{S1} + V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_{S3} = 600 + 200 = 800\ mL \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_{S3} = 0,800\ L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration totale en H₃O⁺ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [H_3O^+]_{S3} = \\ \frac{n_{H_3O^+,S1} + n_{H_3O^+,S2}}{V_{S3}} \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+]_{S3} = \\ \frac{3,00 \times 10^{-3} + 1,44 \times 10^{-3}}{0,800} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [H_3O^+]_{S3} = \\ \frac{4,44 \times 10^{-3}}{0,800} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]_{S3}",
              valueTex2SvgMath: r"5,55 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "pH du mélange :"),

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
            math:
                r"\begin{array}{l} pH = -log(5,55 \times 10^{-3}) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"pH_{S3}",
              valueTex2SvgMath: r"2,26",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentrations de toutes les espèces chimiques :"),

          EspConstants.esp40,

          sbTxt(txt: "Espèces provenant de S₁  et S₂  :"),

          EspConstants.esp40,

          sbTxt(txt: "Réactions de dissolution: "),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} S1:\ \ HCl \rightarrow H_3O^+ + Cl^- \\ S2:\ \ H_2SO_4 \rightarrow 2H_3O^+ + SO_4^{2-} \end{array}",
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

          sbTxt(txt: "Bilan des espèces : H₃O⁺, Cl⁻, SO₄²⁻, OH⁻, H₂O"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "HCl et H₂SO₄ n'apparaissent pas dans le bilan car leurs réactions avec l'eau sont totales.",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de H₃O⁺ (déjà calculée) :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]_{S3}",
              valueTex2SvgMath: r"5,55 \times 10^{-3}",
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
                r"\begin{array}{l} [OH^-] = \frac{10^{-14}}{5,55 \times 10^{-3}} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]_{S3}",
              valueTex2SvgMath: r"1,80 \times 10^{-12}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de Cl⁻ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Cl⁻ provenant de S₁ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Cl^-} = C_{S1} \times V_{S1} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Cl^-} = 5,00 \times 10^{-3} \times 0,600 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Cl^-} = 3,00 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^-]_{S3} = \frac{n_{Cl^-}}{V_{S3}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Cl^-]_{S3} = \frac{3,00 \times 10^{-3}}{0,800} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]_{S3}",
              valueTex2SvgMath: r"3,75 \times 10^{-3}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de SO₄²⁻ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de SO₄²⁻ provenant de S₂ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-}} = C_{S2} \times V_{S2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-}} = 3,60 \times 10^{-3} \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-}} = 7,20 \times 10^{-4}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [SO_4^{2-}]_{S3} = \frac{n_{SO_4^{2-}}}{V_{S3}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}]_{S3} = \frac{7,20 \times 10^{-4}}{0,800} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{S3}",
              valueTex2SvgMath: r"9,00 \times 10^{-4}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          onNeCalculePasLaConcentrationDeLeau(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
