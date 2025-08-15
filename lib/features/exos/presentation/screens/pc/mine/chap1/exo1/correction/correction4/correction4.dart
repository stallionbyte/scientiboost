import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction4 extends ConsumerStatefulWidget {
  const Correction4({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction4State();
}

class _Correction4State extends ConsumerState<Correction4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Dissociation du sulfate de zinc :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} ZnSO_4 \rightarrow Zn^{2+} + SO_4^{2-} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[ZnSO_4]}{1} = \frac{[Zn^{2+}]}{1} \\  = \frac{[SO_4^{2-}]}{1} = \frac{C_1}{1}  \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Zn²⁺ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[Zn^{2+}]}{1}  = \frac{C_1}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Zn^{2+}] = C_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Zn^{2+}]",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions SO₄²⁻ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[ZnSO_4]}{1} = \frac{C_1}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [SO_4^{2-}] = C_1 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[SO_4^{2-}]",
              valueTex2SvgMath: r"0,200",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
