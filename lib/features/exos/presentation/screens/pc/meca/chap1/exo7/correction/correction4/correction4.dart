import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';

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

          sbTxt(txt: "Distance parcourue pendant l'accélération (phase 1) :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} d_1 = v_{1,0} \cdot t \\ + \frac{1}{2} a_1 \cdot t^2 \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_1 = 0 + \frac{1}{2} \times 0,0926 \\ \times {240}^2 \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_1 = 2666,8\ \text{m} \end{array}",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details3(),
          EspConstants.esp40,

          sbTxt(txt: "Distance parcourue à vitesse constante (phase 2) :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_2 = v_{max} \times t_2 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,
          EspConstants.esp40,
          tex(
            math: r"\begin{array}{l} d_2 = 22{,}22 \times 1080 \end{array}",
            scale: 3.0,
          ),
          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_2 = 23997,6\ \text{m} \end{array}",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          sbTxt(txt: "Distance parcourue pendant la décélération (phase 3) :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} d_3 = v_{3,0} \cdot t_3 \\ + \frac{1}{2} a_3 \cdot t_3^2 \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} d_3 = 22{,}22 \times 180 \\ + \frac{1}{2} \times (-0{,}123) \times (180)^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} d_3 = 2007\ \text{m} \end{array}",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          sbTxt(txt: "Distance totale Koudougou-Kindi :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} d_{totale} = d_1 + d_2 + d_3 \\ = 2666{,}8 + 23997,6 + 2007 \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"d_{totale}",
              valueTex2SvgMath: r"28671,4",
              unitTex2SvgMath: r"m",
            ),
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"d_{totale}",
              valueTex2SvgMath: r"28,67",
              unitTex2SvgMath: r"km",
            ),
          ),

          EspConstants.esp40,

          transition(
            transition:
                "La distance entre les gares de Koudougou et Kindi est de 28,67 km. Le train parcourt cette distance en 25 minutes.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
