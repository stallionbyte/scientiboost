import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/details/details_builders/ener_liaison_nuc.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';

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
          EspConstants.esp20,

          constanteRadioactivite(scale: 2.0),

          EspConstants.esp20,

          constanteRadioActiveInverse(scale: 2.0, entraineQue: true),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: periodeAvecLambda(scale: 2.0),
            color: Colors.black,
          ),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          periodeAvecLambda(scale: 2.0, lambda: r"1,05 \cdot 10^{-4}"),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(left: r"T", value: r"6601,4", unit: r"s"),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
