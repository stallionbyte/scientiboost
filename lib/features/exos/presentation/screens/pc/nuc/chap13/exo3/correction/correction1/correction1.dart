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

          BordersWrapper(
            wrapped: tex(
              math:
                  r"\begin{array}{l} _{90}^{232}Th + _{0}^{1}n \longrightarrow _{38}^{88}Sr \\ + _{52}^{144}Te + _{0}^{1}n \end{array}",
              scale: 5.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp40,

          tex(math: r"x = 88\ et\ y = 52"),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
