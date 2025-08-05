import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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

          sbTxt(
            txt:
                "Le nombre de noyaux dans l'échantillon au moment de la découverte correspond au nombre de noyaux à l'instatnt t (soit N)",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: activiteAvecLambdaN(scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          activiteAvecLambdaN(
            scale: 2.0,
            lambda: r"3,8 \cdot 10^{-12}",
            N: r"2,4 \cdot 10^{15}",
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"9120",
              unitTex2SvgMath: r"Bq",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En Ci"),

          EspConstants.esp40,

          regleDe3(
            part1: PhyNucData.valueCurieEnBqTexMath + r"\ Bq",
            part2: r"1\ Ci",
            part3: r"9120 \ Bq",
            left: r"A",
            wrap: true,
            scale: 8.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"2,46 \cdot 10^{-7}",
              unitTex2SvgMath: r"Ci",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
