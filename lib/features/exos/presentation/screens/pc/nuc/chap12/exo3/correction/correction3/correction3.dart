import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';

import 'package:scientiboost/core/constants/pc/nuc/data_constants.dart';

import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details/details1.dart';

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
          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"n \cdot \mathcal{N} \cdot E",
              bold: false,
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          result(
            leftTex2SvgMath: r"E_{totale}",
            valueTex2SvgMath:
                r"3,4 \cdot 10^{-7} \cdot 6,02 \cdot 10^{23} \cdot 4,28",
            bold: false,
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_{totale}",
              valueTex2SvgMath: r"8,76 \cdot 10^{17}",
              unit: r"MeV",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
