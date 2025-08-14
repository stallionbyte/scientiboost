import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details2.dart';

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

          sbTxt(txt: "Vitesse en bas du plan incliné :"),

          EspConstants.esp40,

          transition(
            transition: "Méthode 1 : avec l'équation horaire de vitesse",
          ),

          EspConstants.esp40,

          transition(transition: "Équation horaire de vitesse"),
          EspConstants.esp40,

          tex(math: r"\begin{array}{l} v(t) = 2{,}54t \end{array}", scale: 1.5),
          EspConstants.esp40,

          transition(transition: "Temps calculé précédemment"),
          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} t_{final} = 9{,}72\ \text{s} \end{array}",
            scale: 1.5,
          ),
          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{final} = v(9{,}72) \\ = 2{,}54 \times 9{,}72 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v_{final}",
              valueTex2SvgMath: r"24{,}7",
              unitTex2SvgMath: r"m/s",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Méthode 2 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} v^2 = v_0^2 + 2 \cdot a \cdot d \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v^2 = 0 + 2 \times 2{,}54 \times 120 \\ = 609{,}6 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} v = \sqrt{609{,}6}  \end{array}",
            scale: 1.5,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"v",

              valueTex2SvgMath: r"24{,}7",
              unitTex2SvgMath: r"\text{m/s}",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Conversion en km/h :"),

          EspConstants.esp40,

          regleDe3(
            part1: r"1\ m/s",
            part2: r"3,6\ km/h",
            part3: r"24{,}7\ m/s",
            left: r"v",
            scale: 8.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} v_{final} = 24{,}7 \times 3{,}6 \\ = 88{,}9\ \text{km/h} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          transition(
            transition:
                "SÉCURITÉ : Les wagonnets atteignent une vitesse de près de 89 km/h en bas de la pente. Des systèmes de freinage efficaces sont INDISPENSABLES.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
