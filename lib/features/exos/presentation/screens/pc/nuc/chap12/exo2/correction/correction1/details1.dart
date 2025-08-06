import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:scientiboost/core/common_widgets/details_handler.dart';
import 'package:scientiboost/core/widgets_builders/builders.dart';
import 'package:scientiboost/core/constants/constants.dart';
import 'package:scientiboost/features/exos/presentation/screens/pc/nuc/reactions/reactions_builders.dart';

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
          betaMoins(
            X1: r"I",
            Z1: r"\ \ x",
            A1: r"131",
            X2: r"Xe",
            Z2: r"\ 54",
            A2: r"131",
            scale: 1.5,
          ),

          EspConstants.esp40,

          transition(transition: "Calculons x"),

          EspConstants.esp40,

          sbTxt(txt: "Selon la loi de conservation du nombre de charge:"),

          EspConstants.esp40,

          tex(math: r"x = 54 + (-1)"),

          EspConstants.esp40,

          tex(math: r"\Rightarrow \ x = 53"),
        ],
      ),
    );
  }
}
