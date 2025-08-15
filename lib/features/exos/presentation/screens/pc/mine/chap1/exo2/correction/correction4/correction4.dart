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

          sbTxt(txt: "Ionisation de l'acide chlorhydrique :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} HCl + H_2O \rightarrow H_3O^{+} \\ + Cl^{-} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{C_2}{1} = \frac{[H_3O^{+}]}{1} \\  = \frac{[Cl^{-}]}{1}   \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Concentration des ions Cl⁻ :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{[Cl^{-}]}{1} = \frac{C_2}{1}  \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} [Cl^{-}] = C_2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"[Cl^{-}]",
              valueTex2SvgMath: r"0,100",
              unitTex2SvgMath: r"mol/L",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
