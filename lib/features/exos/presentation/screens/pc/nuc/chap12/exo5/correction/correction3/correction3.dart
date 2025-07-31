import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/common_widgets/borders_wrapper.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

import 'details/details1.dart';
import 'details/details2.dart';
import 'details/builders.dart';

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
            wrapped: nombreDisparueSuite8(
              T: r"T",
              NPrime: r"N'",
              Ao: r"A_0",
              t: r"t",
              scale: 2.0,
            ),
            color: Colors.black,
          ),

          EspConstants.esp20,

          Details1(),

          EspConstants.esp20,

          TransitionConstants.an,

          EspConstants.esp20,

          nombreDisparueSuite8(
            T: r"64,1",
            NPrime: r"N'",
            Ao: r"2 \cdot 10^9",
            t: r"10 \cdot 24",
            scale: 2.0,
          ),

          EspConstants.esp20,

          Details2(),

          EspConstants.esp20,

          BordersWrapper(
            wrapped: result(
              left: r"N'",
              valueTex2SvgMath: r"1,7 \cdot 10^{11}",
              unit: r"noyaux",
            ),
          ),

          EspConstants.esp40,
        ],
      ),
    );
  }
}
