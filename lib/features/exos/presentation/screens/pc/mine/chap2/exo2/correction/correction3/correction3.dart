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

          sbTxt(txt: "pH du mélange S₃ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de OH⁻ provenant de S₁ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{OH^-,S1} = \\ [OH^-]_{S1} \times V_{S1} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{OH^-,S1} = \\ 0,0200 \times 0,300 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{OH^-,S1} = 6,00 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de OH⁻ provenant de S₂ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} n_{OH^-,S2} = \\ [OH^-]_{S2} \times V_{S2} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{OH^-,S2} = \\ 0,0612 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{OH^-,S2} = 1,22 \times 10^{-2}\ mol \end{array}",
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
            math: r"\begin{array}{l} V_{S3} = 300 + 200 = 500\ mL \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_{S3} = 0,500\ L \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration totale en OH⁻ :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [OH^-]_{S3} = \\ \frac{n_{OH^-,S1} + n_{OH^-,S2}}{V_{S3}} \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-]_{S3} = \\ \frac{6,00 \times 10^{-3} + 1,22 \times 10^{-2}}{0,500} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [OH^-]_{S3} = \\ \frac{1,82 \times 10^{-2}}{0,500} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]_{S3}",
              valueTex2SvgMath: r"0,0364",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "pH du mélange :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} pH = 14 + log[OH^-] \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} pH = 14 + log(0,0364) \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(math: r"\begin{array}{l} pH = 14 - 1,44 \end{array}", scale: 3.0),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"pH_{S3}",
              valueTex2SvgMath: r"12,56",
              unitTex2SvgMath: r"",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentrations de toutes les espèces chimiques :"),

          EspConstants.esp40,

          sbTxt(txt: "Espèces provenant de S₁ et S₂ :"),

          EspConstants.esp40,

          sbTxt(txt: "Réactions de dissolution :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} S1:\ \ NaOH \rightarrow Na^+ + OH^- \\ S2:\ \ Ca(OH)_2 \rightarrow Ca^{2+} + 2OH^- \end{array}",
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

          sbTxt(txt: "Bilan des espèces : Na⁺, Ca²⁺, OH⁻, H₃O⁺, H₂O"),

          EspConstants.esp40,

          sbTxt(
            txt:
                "NaOH et Ca(OH)₂ n'apparaissent pas dans le bilan car leurs réactions avec l'eau sont totales.",
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de OH⁻ (déjà calculée) :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[OH^-]_{S3}",
              valueTex2SvgMath: r"0,0364",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de H₃O⁺ :"),

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
                r"\begin{array}{l} [H_3O^+] = \frac{10^{-14}}{0,0364} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[H_3O^+]_{S3}",
              valueTex2SvgMath: r"2,75 \times 10^{-13}",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de Na⁺ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Na⁺ provenant de S₁ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Na^+} = C_{S1} \times V_{S1} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Na^+} = 0,0200 \times 0,300 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Na^+} = 6,00 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Na^+]_{S3} = \frac{n_{Na^+}}{V_{S3}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Na^+]_{S3} = \frac{6,00 \times 10^{-3}}{0,500} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Na^+]_{S3}",
              valueTex2SvgMath: r"0,0120",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration de Ca²⁺ :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Ca²⁺ provenant de S₂ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Ca^{2+}} = C_{S2} \times V_{S2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Ca^{2+}} = 0,0306 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Ca^{2+}} = 6,12 \times 10^{-3}\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Ca^{2+}]_{S3} = \frac{n_{Ca^{2+}}}{V_{S3}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Ca^{2+}]_{S3} = \frac{6,12 \times 10^{-3}}{0,500} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Ca^{2+}]_{S3}",
              valueTex2SvgMath: r"0,0122",
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
