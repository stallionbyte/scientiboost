import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';

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
          tex(math: r"\Delta m = \frac{E_l}{931,5}", scale: 2.5),

          EspConstants.esp40,

          TransitionConstants.premierement,

          EspConstants.esp40,

          tex(math: r"E_l = 1176 \ \text{MeV}", scale: 2.0),

          EspConstants.esp40,

          TransitionConstants.ainsi,

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = \frac{1176}{931,5} \\ = 1,262 \ \text{u} \end{array}",
            scale: 2.5,
          ),

          EspConstants.esp40,

          sbTxt(txt: "Conversion en kg :"),

          EspConstants.esp20,

          tex(
            math: r"1 \ \text{u} = 1,66 \times 10^{-27} \ \text{kg}",
            scale: 2.0,
          ),

          EspConstants.esp40,

          tex(
            math:
                r"\begin{array}{l} \Delta m = 1,262 \times 1,66 \times 10^{-27} \\ = 2,095 \times 10^{-27} \ \text{kg} \end{array}",
            scale: 2.5,
          ),
        ],
      ),
    );
  }
}
