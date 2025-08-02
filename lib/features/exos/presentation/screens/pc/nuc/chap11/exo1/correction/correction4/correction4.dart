import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

import 'details1.dart';

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

          BordersWrapper(
            wrapped: defautDeMasse(scale: 6.0),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          defautDeMasse(
            scale: 6.0,
            X: r"U",
            Z: r"92",
            A: r"235",
            masseNoyau: r"3,899 \cdot 10^{-25}",
            mp:
                PhyNucData.valueMasseProtonEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath,
            mn:
                PhyNucData.valueMasseNeutronEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"m\left(_{92}^{235}U\right)",
              valueTex2SvgMath: r"3,36 \cdot 10^{-27}",
              unitTex2SvgMath: r"\text{kg}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
