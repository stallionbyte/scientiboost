import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';
import 'details2.dart';

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
                  r"\begin{array}{l} t = \frac{T}{\ln 2} \ln\left(\frac{m_0}{m}\right) \end{array}",
              scale: 5.0,
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
                r"\begin{array}{l} t = \frac{24 100}{\ln 2} \ln\left(\frac{1}{0,17}\right) \end{array}",
            scale: 5.0,
          ),

          EspConstants.esp40,

          Details2(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"t",
              valueTex2SvgMath: r"61609",
              unitTex2SvgMath: r"ans",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
