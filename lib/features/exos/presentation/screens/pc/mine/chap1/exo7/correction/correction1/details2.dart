import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';

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
          tex(math: r"\text{La masse volumique est :}", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"\rho = 1,25\ g/mL", scale: 2.5),

          EspConstants.esp40,

          tex(math: r"1\ mL = 10^{-3}\ L", scale: 2.5),

          EspConstants.esp40,

          regleDe3(
            part1: r"10^{-3}\ L",
            part2: r"1,25\ g",
            part3: r"1\ L",
            left: r"\rho",
            scale: 8.0,
          ),

          EspConstants.esp40,

          tex(math: r"\rho = 1250\ g/L", scale: 2.5),
        ],
      ),
    );
  }
}
