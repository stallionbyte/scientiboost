import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

import 'builders.dart';

class Details2 extends ConsumerStatefulWidget {
  const Details2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details2State();
}

class _Details2State extends ConsumerState<Details2> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          nombreDisparueSuite8(
            T: r"T",
            NPrime: r"N'",
            Ao: r"A_0",
            t: r"t",
            scale: 4.0,
          ),

          EspConstants.esp20,

          TransitionConstants.premierement,

          EspConstants.esp20,

          expression(leftTex2SvgMath: r"A_o", right: r"2 Gbq"),

          EspConstants.esp20,

          TransitionConstants.or,

          EspConstants.esp20,

          expression(left: r"1 GBq", rightTex2SvgMath: r"10^9\ Bq"),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          expression(
            leftTex2SvgMath: r"A_o",
            rightTex2SvgMath: r"2 \cdot 10^9 \ Bq",
          ),

          EspConstants.esp20,

          TransitionConstants.deuxiemement,

          EspConstants.esp20,

          expression(left: r"T", right: r"64,1 heures"),

          EspConstants.esp20,

          TransitionConstants.troisiemement,

          EspConstants.esp20,

          expression(left: r"t", right: r"10 jours"),

          EspConstants.esp20,

          transition(
            transition:
                "Comme T est en heures, convertissons aussi t en heures",
          ),

          EspConstants.esp20,

          regleDe3(
            part1: r"1\ jour",
            part2: r"24\ heures",
            part3: r"10\ jours",
            left: r"t",
            scale: 6.0,
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          nombreDisparueSuite8(
            T: r"64,1",
            NPrime: r"N'",
            Ao: r"2 \cdot 10^9",
            t: r"10 \cdot 24",
            scale: 4.0,
          ),
        ],
      ),
    );
  }
}
