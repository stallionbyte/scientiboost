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

          sbTxt(txt: "Nombre de noyaux dans 1 kg de deutérium :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} N_D = \frac{m}{M} \times \mathcal{N_A} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N_D =\\ \frac{1000}{2} \times 6,022 \times 10^{23} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"N_D",
              valueTex2SvgMath: r"3,01 \times 10^{26}",
              unitTex2SvgMath: r"noyaux",
            ),
          ),

          EspConstants.esp40,

          sbTxt(
            txt: "Nombre de réactions (2 noyaux de deuterium par réaction) :",
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N_{réactions} = \frac{N_D}{2} \\ N_{réactions} = 1,51 \times 10^{26} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Énergie totale libérée :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} E_{totale} =\\ N_{réactions} \times Q_{par\ réaction} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = 1,51 \times 10^{26} \times 3,27 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"4,93 \times 10^{26}",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En joules"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = 4,93 \times 10^{26} \\ \times 1,602 \times 10^{-13} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"7,90 \times 10^{13}",
              unitTex2SvgMath: r"J",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
