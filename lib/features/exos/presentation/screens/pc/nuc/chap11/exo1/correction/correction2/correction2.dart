import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';

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
            wrapped: tex(
              math:
                  r"\begin{array}{l} m( noyau ) = \\ m( atome ) \\ - Z \cdot masse\ d'un\ électron \end{array}",
              scale: 4.0,
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
                // ignore: prefer_adjacent_string_concatenation
                r"\begin{array}{l} m(\ noyau \ ) = \\" +
                r"3,9 \cdot 10^{-25} \\ - 92 \cdot " +
                PhyNucData.valueMasseElectronEnU +
                r" \cdot " +
                PhyNucData.valueUEnKgTexMath +
                r"\end{array}",
            scale: 4.0,
          ),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\text{m(\ noyau \ )}",
              valueTex2SvgMath: r"3,899 \cdot 10^{-25}",
              unitTex2SvgMath: r"\text{kg}",
            ),
          ),
        ],
      ),
    );
  }
}
