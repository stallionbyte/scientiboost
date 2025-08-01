import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/t_fraction_grandeur_restante_helpers.dart';

import 'details/details1.dart';

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
          EspConstants.esp20,

          BordersWrapper(
            wrapped: tempsFractionGrandeurRestante8(
              scale: 2.0,
              lambda: r"\lambda",
              t: r"t",
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          tempsFractionGrandeurRestante8(
            scale: 2.0,
            lambda: r"1,05 \cdot 10^{-4}",
            t: r"t",
          ),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: r"t", value: r"3861,57", unit: r"s"),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
