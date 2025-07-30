import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          const SizedBox(height: 20),
          sbTxt(
            txt:
                "l'activité initiale est de 37 kBq, soit 37 000 Bq. \n \n 37 000 Bq signifie 37 000 désintégrations par seconde. Chaque désintégration d'un américium-241 libère une particule alpha. Par conséquent 37 000 désintégrations par seconde libèrent 37 000 particules alpha par seconde.",
          ),

          EspConstants.esp20,

          regleDe3(
            part1: r"1\ particule\ \alpha",
            part2: r"150\ 000\ ions",
            part3: r"37\ 000\ particule\ \alpha",
            left: r"N(ions)",
            border: true,
            scale: 6.0,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              left: r"N(ions)",
              valueTex2SvgMath: r"5,55 \cdot 10^9",
              unit: r"ions",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
