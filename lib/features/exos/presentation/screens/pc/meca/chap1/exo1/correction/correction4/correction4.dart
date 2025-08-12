import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

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

          sbTxt(txt: "Vitesse du motocycliste au moment du rattrapage :"),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v_2(16) = 2{,}5 \times 16 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_2(16)",
              valueTex2SvgMath: r"40",
              unitTex2SvgMath: r"m/s",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Conversion en km/h :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_2 = 40 \times 3{,}6 \\ v_2 = 144\ \text{km/h} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          transition(transition: "Comparaison des vitesses :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{\text{motocycliste}} = 144\ \text{km/h} \\ v_{\text{voiture}} = 72\ \text{km/h} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \frac{v_{\text{motocycliste}}}{v_{\text{voiture}}} = \frac{144}{72}  \\  \frac{v_{\text{motocycliste}}}{v_{\text{voiture}}} = 2 \end{array}",
            scale: 5.0,
          ),
          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} v_{\text{motocycliste}} =\\ 2 \cdot v_{\text{voiture}} \end{array}",
              scale: 3.0,
            ),
            color: Colors.red,
          ),

          EspConstants.esp40,

          transition(
            transition:
                "Le motocycliste roule à une vitesse double de celle de la voiture au moment du rattrapage.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
