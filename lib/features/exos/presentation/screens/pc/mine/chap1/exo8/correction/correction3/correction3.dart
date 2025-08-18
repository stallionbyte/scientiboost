import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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

          sbTxt(txt: "Volume total du mélange :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} V_{total} = V_{S1} + V_{S2} + V_{S3} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} V_{total} = 200 + 150 + 180 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} V_{total} = 530\ mL \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions K⁺ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de K⁺ provenant de S1 :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{K^+} = [K^+]_{S1} \times V_{S1} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{K^+} = 0,400 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{K^+} = 0,0800\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [K^+]_{mél} = \frac{n_{K^+}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [K^+]_{mél} = \frac{0,0800}{0,530} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[K^+]_{mél}",
              valueTex2SvgMath: r"1,51 \times 10^{-1}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Al³⁺ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Al³⁺ provenant de S2 :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},S2} = [Al^{3+}]_{S2} \times V_{S2} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},S2} = 0,240 \times 0,150 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{Al^{3+},S2} = 0,0360\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de Al³⁺ provenant de S3 :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},S3} = [Al^{3+}]_{S3} \times V_{S3} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},S3} = 0,333 \times 0,180 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} n_{Al^{3+},S3} = 0,0600\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité totale de Al³⁺ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},total} = \\ n_{Al^{3+},S2} + n_{Al^{3+},S3} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},total} = 0,0360 + 0,0600 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{Al^{3+},total} = 0,0960\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Al^{3+}]_{mél} = \frac{n_{Al^{3+},total}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} [Al^{3+}]_{mél} = \frac{0,0960}{0,530} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Al^{3+}]_{mél}",
              valueTex2SvgMath: r"1,81 \times 10^{-1}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions SO₄²⁻ dans le mélange :"),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de SO₄²⁻ provenant de S1 :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S1} = \\ [SO_4^{2-}]_{S1} \times V_{S1} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S1} = 0,200 \times 0,200 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S1} = 0,0400\ mol \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Quantité de SO₄²⁻ provenant de S2 :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S2} = \\ [SO_4^{2-}]_{S2} \times V_{S2} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S2} = 0,360 \times 0,150 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},S2} = 0,0540\ mol \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          sbTxt(txt: "Quantité totale de SO₄²⁻ :"),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},total} = \\ n_{SO_4^{2-},S1} + n_{SO_4^{2-},S2} \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},total} = \\ 0,0400 + 0,0540 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{SO_4^{2-},total} = \\ 0,0940\ mol \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [SO_4^{2-}]{mél} = \\ \frac{n{SO_4^{2-},total}}{V_{total}} \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),
          EspConstants.esp40,
          TransitionConstants.an,
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} [SO_4^{2-}]_{mél} = \frac{0,0940}{0,530} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]_{mél}",
              valueTex2SvgMath: r"1,77 \times 10^{-1}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),
          EspConstants.esp40,
          sbTxt(txt: "Concentration des ions Cl⁻ dans le mélange :"),
          EspConstants.esp40,
          sbTxt(txt: "Quantité de Cl⁻ provenant de S3 :"),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} n_{Cl^-} = [Cl^-]{S3} \times V{S3} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math: r"\begin{array}{l} n_{Cl^-} = 1,00 \times 0,180 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          tex(
            math: r"\begin{array}{l} n_{Cl^-} = 0,180\ mol \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} [Cl^-]{mél} = \frac{n{Cl^-}}{V_{total}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),
          EspConstants.esp40,
          TransitionConstants.an,
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} [Cl^-]_{mél} = \frac{0,180}{0,530} \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^-]_{mél}",
              valueTex2SvgMath: r"3,40 \times 10^{-1}",
              unitTex2SvgMath: r"mol/L",
              wrap: true,
              scale: 2.5,
            ),
          ),

          EspConstants.esp40,
          sbTxt(txt: "Vérification de l'électroneutralité : "),
          sbTxt(
            txt:
                "(on multiplie la concentration de chaque ion par la valeur absolue de sa charge)",
          ),
          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \text{Charges positives :} \\ 1 \times [K^+] + 3 \times [Al^{3+}] =\\ 1 \times 0,151 + 3 \times 0,181 \ =\\ 0,694\ mol/L \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} \text{Charges négatives :} \\ 2 \times [SO_4^{2-}] + 1 \times [Cl^-] =\\ 2 \times 0,177 + 1 \times 0,340 \ =\\ 0,694\ mol/L \end{array}",
            scale: 8.0,
          ),

          EspConstants.esp40,
          sbTxt(txt: "L'électroneutralité est respectée."),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
