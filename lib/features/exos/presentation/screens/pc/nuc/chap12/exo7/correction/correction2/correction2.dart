import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

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
            wrapped: tex(math: r"T = \frac{ln2}{\lambda}", scale: 3.0),
            color: Colors.black,
          ),
          EspConstants.esp40,

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          tex(math: r"T = \frac{ln2}{4,86 \cdot 10^{-7}}", scale: 3.0),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"T",
              valueTex2SvgMath: r"1426228",
              unitTex2SvgMath: r"s",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
