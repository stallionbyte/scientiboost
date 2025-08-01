import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          EspConstants.esp20,

          sbTxt(
            txt:
                "D'une part, par définition l'activité radioactive est le nombre de désintégrations par seconde. \n D'autre part dans l'énoncé l'activité est donnée en desintégrations par minute (60 secondes). \n  L'activité du tissu vivant (13,6 désintégrations par minute) correspond à l'activité initiale",
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          regleDe3(
            part1: r"60\ seconde",
            part2: r"13,6\ désintégrations",
            part3: r"1\ seconde",
            left: r"A_0",
            border: true,
            scale: 6.0,
          ),

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A_0",
              value: r"0,226",
              unit: r"Bq",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
