import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

class Correction1 extends ConsumerStatefulWidget {
  const Correction1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Correction1State();
}

class _Correction1State extends ConsumerState<Correction1> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),

          BordersWrapper(
            wrapped: constanteRadioactivite(scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          transition(transition: "AN"),

          EspConstants.esp20,

          constanteRadioactivite(scale: 2.0, T: r"8,02"),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"\lambda",
              valueTex2SvgMath: r"8,61 \cdot 10^{-2}",
              unitTex2SvgMath: r"jour^{-1}",
            ),
          ),

          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
