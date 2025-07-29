import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders.dart';

import 'details/details1.dart';
import 'details/details2.dart';

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

          BordersWrapper(
            wrapped: aoAvecALambdaTemps(scale: 1.8),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          transition(transition: "AN"),

          EspConstants.esp20,

          aoAvecALambdaTemps(
            A: r"3,7 \cdot 10^9",
            lambda: r"\frac{8,61 \cdot 10^{-2}}{24}",
            t: r"48",
            scale: 3.0,
          ),

          EspConstants.esp20,

          Details2(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A_o",
              valueTex2SvgMath: r"4,39 \cdot 10^9",
              unit: "Bq",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
