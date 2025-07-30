import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          result(
            leftTex2SvgMath: r"E_{totale}",
            value:
                r"nombre de noyaux . énergie libérée par la désintégration d'un noyau",
            bold: false,
          ),

          EspConstants.esp40,

          result(
            left: r"nombre de noyaux",
            valueTex2SvgMath: r"nombre\ de\ mol \cdot \mathcal{N}",
            bold: false,
          ),

          EspConstants.esp40,

          sbTxt(
            txt:
                "Soit n le nombre de mol, N le nombre de noyaux et E l'énergie libérée par la désintégration d'un noyau",
          ),

          EspConstants.esp40,

          result(
            leftTex2SvgMath: r"N",
            valueTex2SvgMath: r"n \cdot \mathcal{N}",
            bold: false,
          ),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          result(leftTex2SvgMath: r"E_{totale}", value: r"N . E", bold: false),

          EspConstants.esp40,

          result(
            leftTex2SvgMath: r"E_{totale}",
            valueTex2SvgMath: r"n \cdot \mathcal{N} \cdot E",
            bold: false,
          ),
        ],
      ),
    );
  }
}
