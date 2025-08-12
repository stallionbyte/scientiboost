import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

class Correction5 extends ConsumerStatefulWidget {
  const Correction5({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction5State();
}

class _Correction5State extends ConsumerState<Correction5> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EspConstants.esp40,

          transition(transition: "Pour la fission"),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} ^{235}_{92}U + ^1_0n \longrightarrow ^{140}_{55}Cs + \\ ^{93}_{37}Rb + 3^1_0n \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          tex(math: r"m_{réactifs} = m(^{235}U) + m(^1n)"),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} m_{réactifs} = 235,04393\ u  \\ + 1,00866\ u \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
          tex(math: r"m_{réactifs} = 236,05259\ u"),
          EspConstants.esp40,

          regleDe3(
            part1: r"236,05259\ u",
            part2: r"176,2\ MeV",
            part3: r"1\ u",
            left: r"E_{(par\ u)}",
            wrap: true,
            scale: 8.0,
            border: true,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{(par\ u)}",

              valueTex2SvgMath: r"0,746",
              unitTex2SvgMath: r"MeV/u",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "Pour la fusion"),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} ^2_1H + ^3_1H \longrightarrow ^4_2He + ^1_0n \end{array}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(math: r"m_{réactifs} = m(^2H) + m(^3H)"),

          EspConstants.esp40,
          tex(
            math:
                r"\begin{array}{l} m_{réactifs} = 2,01410\ u \\ + 3,01604\ u \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,
          tex(math: r"m_{réactifs} = 5,03014\ u"),
          EspConstants.esp40,

          regleDe3(
            part1: r"5,03014\ u",
            part2: r"17,6\ MeV",
            part3: r"1\ u",
            left: r"E_{(par\ u)}",
            wrap: true,
            scale: 8.0,
            border: true,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{(par\ u)}",

              valueTex2SvgMath: r"3,498",
              unitTex2SvgMath: r"MeV/u",
            ),
          ),

          EspConstants.esp40,

          transition(
            transition:
                "Si on compare les énergie libérées par unité de m atomique, la fusion nucléaire a une éfficacité énergétique nettement plus éleVée que la fission nucléaire.",
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
