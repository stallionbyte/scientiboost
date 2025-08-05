import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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
          EspConstants.esp40,
          BordersWrapper(
            wrapped: constanteRadioactivite(scale: 3.0),
            color: Colors.black,
          ),

          EspConstants.esp40,
          TransitionConstants.an,
          EspConstants.esp40,
          constanteRadioactivite(scale: 3.0, T: r"5730"),
          EspConstants.esp40,
          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\lambda",
              valueTex2SvgMath: r"1,2 \cdot 10^{-4}",
              unitTex2SvgMath: r"ans^{-1}",
            ),
          ),
          EspConstants.esp40,

          tex(math: r"En\ s^{-1}", bold: true),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\lambda",
              valueTex2SvgMath: r"3,8 \cdot 10^{-12}",
              unitTex2SvgMath: r"s^{-1}",
            ),
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
