import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/reactions/reactions_builders.dart';

import 'details1.dart';

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
          EspConstants.esp40,

          BordersWrapper(
            wrapped: energieDesintegration(scale: 2.0, alpha: true),
            color: Colors.black,
          ),
          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} Q = [238,05079 -\\ " +
                PhyNucData.valueMasseParticuleAlphaEnU +
                r"] \cdot " +
                PhyNucData.valueUEnKgTexMath +
                r"(" +
                PhyNucData.valueCEnMParSTexMath +
                r")^2 \end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"Q",
              valueTex2SvgMath: r"3,49\ 10^{-8}",
              unitTex2SvgMath: r"J",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
