import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap12/formules/formules_builders.dart';

import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/data.dart';
import 'package:scientiboost/core/constants/constants.dart';
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
            wrapped: activiteAvecTmoMNaTemps(scale: 4.0, wrap: true),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          activiteAvecTmoMNaTemps(
            scale: 5.0,

            wrap3: true,

            T: r"7,6 \cdot 10^{11}",
            mo: r"5,2 \cdot 10^3",
            M: r"239",
            Na: PhyNucData.valueNombreAvogadroTexMath,
            t: r"1,94 \cdot 10^{12}",
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"A",
              valueTex2SvgMath: r"1,99 \cdot 10^{12}",
              unitTex2SvgMath: r"Bq",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
