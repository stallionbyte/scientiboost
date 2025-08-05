import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

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

          transition(transition: "Pour le fer-56"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: energieDeLiaisonParNucleon(scale: 7.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{l/nuc} = \\ \frac{\begin{array}{l} [26 \cdot 1,007276 \cdot 931,5 \\ + (56-26) \cdot 1,008665 \cdot 931,5 \\ - 52093,56]\  \end{array}}{56} \end{array}",
            scale: 7.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"8,72",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp80,

          transition(transition: "Pour le carbone-12"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} E_{l/nuc} = \frac{\Delta m \cdot c^2}{A} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{l/nuc} = \frac{0,09892 \cdot" +
                PhyNucData.valueUEnMeVC2 +
                r"}{12} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"7,67",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp80,

          transition(transition: "Pour l'uranium-238"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math: r"\begin{array}{l} E_{l/nuc} = \frac{E_l}{A} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math: r"\begin{array}{l} E_{l/nuc} = \frac{1802}{238} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{l/nuc}",
              valueTex2SvgMath: r"7,57",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
