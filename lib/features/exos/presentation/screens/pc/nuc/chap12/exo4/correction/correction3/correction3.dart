import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

import 'details1.dart';

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

          BordersWrapper(
            wrapped: activiteAvecLambdaN(scale: 1.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Il faut d'abord convertir λ en s⁻¹ :"),

          EspConstants.esp40,

          tex(
            math: r"\lambda = 1,05 \times 10^{-4} \ \text{s}^{-1}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          activiteAvecLambdaN(
            scale: 2.0,
            lambda: r"1,05 \times 10^{-4}",
            N: r"1,89 \times 10^{13}",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"1,98 \times 10^{9}",
              unitTex2SvgMath: r"\text{Bq}",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En GBq"),

          EspConstants.esp40,

          regleDe3(
            part1: r"10^9\ Bq",
            part2: r"1\ GBq",
            part3: r"1,98 \times 10^{9}\ Bq",
            left: r"A",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"1,98",
              unitTex2SvgMath: r"\text{GBq}",
            ),
          ),

          EspConstants.esp40,
          sbTxt(
            txt:
                "L'activité (1,98 GBq) est supérieure à l'activité minimale requise (0,8 GBq).\n"
                "L'examen peut être réalisé dans d'excellentes conditions.",
          ),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
