import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

class Correction2 extends ConsumerStatefulWidget {
  const Correction2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction2State();
}

class _Correction2State extends ConsumerState<Correction2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          sbTxt(txt: "Nombre de noyaux dans 1 kg d'uranium-233 :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} N_{^{233}U} = \frac{m}{M} \times \mathcal{N_A} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} N_{^{233}U} =\\ \frac{1000}{233} \times 6,022 \times 10^{23} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"N_{^{233}U}",
              valueTex2SvgMath: r"2,58 \times 10^{24}",
              unitTex2SvgMath: r"noyaux",
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Énergie totale libérée :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} E_{totale} =\\ N_{^{233}U} \times Q_{par\ réaction} \end{array}",
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
                r"\begin{array}{l} E_{totale} =\\ 2,58 \times 10^{24} \times 174,8 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"4,51 \times 10^{26}",
              unitTex2SvgMath: r"MeV",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En joules"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} E_{totale} = 4,51 \times 10^{26} \\ \times 1,602 \times 10^{-13} \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"7,23 \times 10^{13}",
              unitTex2SvgMath: r"J",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
