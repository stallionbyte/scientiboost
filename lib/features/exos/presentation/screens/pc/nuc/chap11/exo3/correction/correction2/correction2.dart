import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/chap11/formules/formules_builders.dart';
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
            wrapped: energieDeLiaisonAvecDefautDeMase(scale: 1.5),
            color: Colors.black,
          ),

          EspConstants.esp40,

          TransitionConstants.an,

          EspConstants.esp40,

          energieDeLiaisonAvecDefautDeMase(
            defautDeMasse: r"0,9146",
            uEnMeVC2: PhyNucData.valueUEnMeVC2,
            scale: 1.5,
          ),

          EspConstants.esp40,

          Details1(),

          EspConstants.esp40,

          BordersWrapper(
            wrapped: result(
              leftTex2SvgMath: r"E_l",
              valueTex2SvgMath: r"825,6",
              unitTex2SvgMath: r"\text{MeV}",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
