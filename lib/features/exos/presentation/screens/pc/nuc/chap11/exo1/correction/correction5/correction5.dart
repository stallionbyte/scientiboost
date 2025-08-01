import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details1.dart';

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
          expression(
            leftTex2SvgMath: r"m(\ nucléons\ de\ _{\ \ 6}^{14}C\ )",
            right: r"14,112976 u",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m(\ _{\ \ 6}^{14}C\ )",
            right: r"14,003242 u",
          ),

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"m(\ nucléons\ de\ _{\ \ 6}^{14}C\ )",
            operateur: r" > ",
            rightTex2SvgMath: r"m(\ _{\ \ 6}^{14}C\ )",
          ),

          EspConstants.esp20,

          sbTxt(txt: "La différence correspond au défaut de masse"),

          EspConstants.esp20,
          Details1(),
          EspConstants.esp40,
        ],
      ),
    );
  }
}
