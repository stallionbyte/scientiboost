import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';
import 'details3.dart';
import 'details4.dart';

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

          sbTxt(txt: "Nombre de réactions de fission :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} N_{réactions} = \frac{E_{nucl}}{Q} \end{array}",
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
                r"\begin{array}{l} N_{réactions} =\\ \frac{3,15 \times 10^{14}}{173,3 \times 1,602 \times 10^{-13}} \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"N_{réactions}",
              valueTex2SvgMath: r"1,13 \times 10^{25}",
              unitTex2SvgMath: r"réactions",
              wrap: true,
              scale: 3.0,
            ),
          ),

          EspConstants.esp40,

          sbTxt(txt: "Masse d'uranium-235 consommée :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} m(^{235}U) = N_{noyaux} \\ \times m_{(d'un\ noyau)} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} m(^{235}U) = 1,13 \times 10^{25} \\ \times 235,04393 \end{array}",
            scale: 3.0,
          ),

          EspConstants.esp40,

          Details3(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(^{235}U)",
              valueTex2SvgMath: r"2,65 \cdot 10^{27}",
              unitTex2SvgMath: r"u",
            ),
          ),

          EspConstants.esp40,

          transition(transition: "En u"),

          EspConstants.esp40,

          Details4(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m(^{235}U)",
              valueTex2SvgMath: r"4,399",
              unitTex2SvgMath: r"kg",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
