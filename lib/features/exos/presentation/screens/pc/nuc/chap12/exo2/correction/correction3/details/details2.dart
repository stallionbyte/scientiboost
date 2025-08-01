import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          masseAvecAMNaLambda(m: r"m_0", A: r"A_0", scale: 2.0),
          EspConstants.esp20,
          TransitionConstants.premierement,
          EspConstants.esp20,
          expression(
            leftTex2SvgMath: r"A_0",
            rightTex2SvgMath: r"4,39 \cdot 10^9 \ Bq",
          ),
          EspConstants.esp20,
          TransitionConstants.deuxiemement,
          EspConstants.esp20,

          sbTxt(
            txt:
                "Quand on dit iode-131, le 131 correspond au nombre de masse A de l'iode. Le nombre de masse peut être utilisé comme masse molaire, par conséquent: M = 131 g/mol",
          ),
          EspConstants.esp20,
          TransitionConstants.troisiemement,
          EspConstants.esp20,
          PhyNucDonneesConstants.nombreAvogadro,
          EspConstants.esp20,
          TransitionConstants.quatiemement,
          EspConstants.esp20,
          expression(
            leftTex2SvgMath: r"\lambda",
            rightTex2SvgMath: r"8,61 \cdot 10^{-2} \ jour^{-1}",
          ),
          EspConstants.esp20,
          expression(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            rightTex2SvgMath: r"\frac{8,61 \cdot 10^{-2}}{jour}",
          ),
          EspConstants.esp20,
          TransitionConstants.or,
          EspConstants.esp20,
          expression(left: r"1 jour", right: r"24 heures"),
          EspConstants.esp20,
          TransitionConstants.et,
          EspConstants.esp20,
          expression(left: r"1 heure", right: r"3600 s"),
          EspConstants.esp20,
          TransitionConstants.dou,
          EspConstants.esp20,
          expression(left: r"1 jour", right: r"24 . 3600 s"),

          EspConstants.esp20,
          expression(
            leftTex2SvgMath: r"\Rightarrow \ \lambda",
            rightTex2SvgMath: r"\frac{8,61 \cdot 10^{-2}}{24 \cdot 3600}",
          ),
          EspConstants.esp20,
          TransitionConstants.ainsi,
          EspConstants.esp20,
          masseAvecAMNaLambda(
            scale: 4.0,
            A: r"4,39 \cdot 10^9",
            M: r"131",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24 \cdot 3600}",
            Na: r"6,02 \cdot 10^{23}",
            m: r"m_0",
          ),
        ],
      ),
    );
  }
}
