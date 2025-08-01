import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/pc/nuc/formules/formules_builders.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

class Details1 extends ConsumerStatefulWidget {
  const Details1({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _Details1State();
}

class _Details1State extends ConsumerState<Details1> {
  @override
  Widget build(BuildContext context) {
    return DetailsHandler(
      details: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          activite(scale: 1.5, developpe: true),

          EspConstants.esp20,

          TransitionConstants.premierement,

          EspConstants.esp20,

          expression(leftTex2SvgMath: r"A_o", right: r"2 GBq"),

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

          expression(left: r"t", right: r"5 jours"),

          EspConstants.esp20,

          transition(
            transition:
                "Comme T est en heures, convertissons aussi t en heures",
          ),

          EspConstants.esp20,

          regleDe3(
            part1: r"1\ jour",
            part2: r"24\ heures",
            part3: r"5\ jours",
            left: r"t",
            scale: 6.0,
          ),

          EspConstants.esp20,

          TransitionConstants.dou,

          EspConstants.esp20,

          activite(
            scale: 1.5,
            developpe: true,
            Ao: r"2 \cdot 10^9",
            T: r"64,1",
            t: r"5 \cdot 24",
          ),
        ],
      ),
    );
  }
}
