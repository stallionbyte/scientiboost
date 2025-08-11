import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';

import 'details1.dart';

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
          EspConstants.esp40,

          sbTxt(txt: "Équation de la réaction de fusion :"),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} ^2_1H + ^3_1H \longrightarrow ^4_2He + ^A_ZX \end{array}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} X = ^1_0n \ \text{(neutron)} \end{array}",
              scale: 3.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          sbTxt(txt: "L'équation complète est donc :"),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} ^2_1H + ^3_1H \longrightarrow ^4_2He + ^1_0n \end{array}",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
