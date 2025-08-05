import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          tex(math: r"E_l = \Delta m \cdot c^2", scale: 2.0),

          EspConstants.esp40,

          tex(math: r"\Delta m = 0,9146 \ \text{u}", scale: 2.0),

          EspConstants.esp40,

          TransitionConstants.or,

          EspConstants.esp40,

          tex(math: r"1 \ \text{u} = 931,5 \ \text{MeV/c}^2", scale: 2.0),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow 1 \ \text{u} = \frac{931,5 \ \text{MeV}}{c^2}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow \frac{931,5 \ \text{MeV}}{c^2} = 1 \ \text{u}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(
            math: r"\Rightarrow 931,5 \ \text{MeV} = 1 \ \text{u} \cdot c^2",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(math: r"1 \ \text{u} \cdot c^2 = 931,5 \ \text{MeV}", scale: 2.0),

          EspConstants.esp40,

          TransitionConstants.dou,

          EspConstants.esp40,

          tex(math: r"E_l = 0,9146 \ \text{u} \cdot c^2", scale: 2.0),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Rightarrow \  E_l = \\ 0,9146 \times 931,5 \ \text{MeV} \end{array}",
            scale: 3.0,
          ),
        ],
      ),
    );
  }
}
